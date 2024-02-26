#![feature(impl_trait_in_assoc_type)]
pub use self::{chromosome::*, crossover::*, individual::*, selection::*};

use rand::RngCore;

mod chromosome;
mod crossover;
mod individual;
mod selection;

pub struct GeneticAlgorithm<S, C> {
    selection_method: S,
    crossover_method: C,
}

impl<S, C> GeneticAlgorithm<S, C>
where
    S: SelectionMethod,
    C: CrossoverMethod,
{
    pub fn new(selection_method: S, crossover_method: C) -> Self {
        Self {
            selection_method,
            crossover_method,
        }
    }

    pub fn evolve<I>(&self, rng: &mut dyn RngCore, population: &[I]) -> Vec<I>
    where
        I: Individual,
    {
        assert!(population.len() > 1);

        (0..population.len())
            .map(|_| {
                // Selection
                let _parent_a = self.selection_method.select(rng, population).chromosome();

                let _parent_b = self.selection_method.select(rng, population).chromosome();

                // Crossover
                let mut child = self.crossover_method.crossover(rng, _parent_a, _parent_b);
                // TODO mutation
                todo!()
            })
            .collect()
    }
}
