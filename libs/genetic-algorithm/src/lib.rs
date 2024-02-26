#![feature(impl_trait_in_assoc_type)]
pub use self::{chromosome::*, individual::*, selection::*};

use rand::RngCore;

mod chromosome;
mod individual;
mod selection;

pub struct GeneticAlgorithm<S> {
    selection_method: S,
}

impl<S> GeneticAlgorithm<S>
where
    S: SelectionMethod,
{
    pub fn new(selection_method: S) -> Self {
        Self { selection_method }
    }

    pub fn evolve<I>(&self, rng: &mut dyn RngCore, population: &[I]) -> Vec<I>
    where
        I: Individual,
    {
        assert!(population.len() > 1);

        (0..population.len())
            .map(|_| {
                // Selection
                let _parent_a = self.selection_method.select(rng, population);

                let _parent_b = self.selection_method.select(rng, population);

                // TODO crossover
                // TODO mutation
                todo!()
            })
            .collect()
    }
}
