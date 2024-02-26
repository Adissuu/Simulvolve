#![feature(impl_trait_in_assoc_type)]
pub use self::{chromosome::*, crossover::*, individual::*, mutation::*, selection::*};

use rand::RngCore;

mod chromosome;
mod crossover;
mod individual;
mod mutation;
mod selection;

pub struct GeneticAlgorithm<S, C, M> {
    selection_method: S,
    crossover_method: C,
    mutation_method: M,
}

impl<S, C, M> GeneticAlgorithm<S, C, M>
where
    S: SelectionMethod,
    C: CrossoverMethod,
    M: MutationMethod,
{
    pub fn new(selection_method: S, crossover_method: C, mutation_method: M) -> Self {
        Self {
            selection_method,
            crossover_method,
            mutation_method,
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
                let parent_a = self.selection_method.select(rng, population).chromosome();

                let parent_b = self.selection_method.select(rng, population).chromosome();

                // Crossover
                let mut child = self.crossover_method.crossover(rng, parent_a, parent_b);
                // Mutation
                self.mutation_method.mutate(rng, &mut child);
            })
            .collect()
    }
}
