use rand::seq::SliceRandom;
//use rand::Rng;
use rand::RngCore;
//use std::iter::FromIterator;

pub trait Individual {
    fn fitness(&self) -> f32;
}

pub struct GeneticAlgorithm;

impl GeneticAlgorithm {
    pub fn new() -> Self {
        Self
    }

    pub fn evolve<I>(&self, population: &[I]) -> Vec<I> {
        assert!(population.len() > 1);

        (0..population.len())
            .map(|_| {
                // TODO selection
                // TODO crossover
                // TODO mutation
                todo!()
            })
            .collect()
    }
}

pub trait SelectionMethod {
    fn select<'a, I>(&self, rng: &mut dyn RngCore, population: &'a [I]) -> &'a I
    where
        I: Individual;
}

pub struct RouletteWheelSelection;

impl RouletteWheelSelection {
    pub fn new() -> Self {
        Self
    }
}

impl SelectionMethod for RouletteWheelSelection {
    fn select<'a, I>(&self, rng: &mut dyn RngCore, population: &'a [I]) -> &'a I
    where
        I: Individual,
    {
        population
            .choose_weighted(rng, |individual| individual.fitness())
            .expect("got an empty population")
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand::SeedableRng;
    use rand_chacha::ChaCha8Rng;
    use std::collections::BTreeMap;

    #[derive(Clone, Debug)]
    pub struct TestIndividual {
        fitness: f32,
    }

    impl TestIndividual {
        pub fn new(fitness: f32) -> Self {
            Self { fitness }
        }
    }

    impl Individual for TestIndividual {
        fn fitness(&self) -> f32 {
            self.fitness
        }
    }

    #[test]
    fn test() {
        let method = RouletteWheelSelection::new();
        let mut rng = ChaCha8Rng::from_seed(Default::default());

        let population = vec![
            TestIndividual::new(1.0),
            TestIndividual::new(2.0),
            TestIndividual::new(3.0),
            TestIndividual::new(4.0),
        ];

        let mut actual = BTreeMap::new();

        for _ in 0..100 {
            let fitness = method.select(&mut rng, &population).fitness() as i32;

            *actual.entry(fitness).or_insert(0) += 1;
        }

        let expected = BTreeMap::from_iter(vec![(1, 11), (2, 18), (3, 36), (4, 35)]);
        assert_eq!(actual, expected);
    }
}
