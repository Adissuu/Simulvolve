use crate::Chromosome;

pub trait Individual {
    fn chromosome(&self) -> &Chromosome;
    fn fitness(&self) -> f32;
}

#[cfg(test)]
#[derive(Clone, Debug, PartialEq)]
pub struct TestIndividual {
    fitness: f32,
}

#[cfg(test)]
impl TestIndividual {
    pub fn new(fitness: f32) -> Self {
        Self { fitness }
    }
}

#[cfg(test)]
impl Individual for TestIndividual {
    fn chromosome(&self) -> &Chromosome {
        todo!("Implement `chromosome` for `TestIndividual`")
    }
    fn fitness(&self) -> f32 {
        self.fitness
    }
}
