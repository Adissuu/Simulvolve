use crate::ga::Chromosome;
use crate::*;

// Coefficients used if the fitness is a linear combinaison of both.
const APPLES_COEFF: u32 = 100;

pub struct Snake {
    pub(crate) body: Vec<(u32, u32)>,
    pub(crate) eye: Eye,
    pub(crate) brain: nn::Network,
    pub(crate) age: u32,
    pub(crate) apples_eaten: u32,
}

impl Snake {
    pub fn new(width: u32, height: u32) -> Self {
        assert!(width >= 3);

        let x = width / 2;
        let y = height / 2;
        let body = vec![(x + 2, y), (x + 1, y), (x, y)];

        Self {
            body,
            eye: Eye::new(),
            brain: nn::Network::random(),
            age: 0,
            apples_eaten: 0,
        }
    }
}

#[derive(Clone)]
pub struct SnakeIndividual {
    apples_eaten: u32,
    age: u32,
    genome: Vec<f32>,
}

impl From<&Snake> for SnakeIndividual {
    fn from(snake: &Snake) -> Self {
        Self {
            apples_eaten: snake.apples_eaten,
            age: snake.age,
            genome: snake.brain.to_genome(),
        }
    }
}

impl From<(&SnakeIndividual, u32, u32)> for Snake {
    fn from((snake_individual, width, height): (&SnakeIndividual, u32, u32)) -> Self {
        let mut snake = Snake::new(width, height);
        snake.brain = nn::Network::from_genome(&snake_individual.genome);
        snake
    }
}

impl ga::Individual for SnakeIndividual {
    fn fitness(&self) -> f32 {
        (self.age * self.age)
            * 2_u32.pow(self.apples_eaten)
            * (APPLES_COEFF * self.apples_eaten + 1)
    }

    fn create(chromosome: Chromosome) -> Self {
        Self {
            apples_eaten: 0,
            age: 0,
            genome: chromosome,
        }
    }

    fn chromosome(&self) -> &Chromosome {
        &self.genome
    }

    fn score(&self) -> u32 {
        self.apples_eaten
    }
}
