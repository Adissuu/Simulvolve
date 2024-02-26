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

                // Convert chromosome to individual
                I::create(child)
            })
            .collect()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use rand::SeedableRng;
    use rand_chacha::ChaCha8Rng;

    fn create_individual(genes: &[f32]) -> TestIndividual {
        let chromosome = genes.iter().cloned().collect();

        TestIndividual::create(chromosome)
    }

    #[test]
    fn test_evolve() {
        let mut rng = ChaCha8Rng::from_seed(Default::default());

        let genetic_algorithm = GeneticAlgorithm::new(
            RouletteWheelSelection::default(),
            UniformCrossover::new(),
            GaussianMutation::new(0.5, 0.5),
        );

        let mut population = vec![
            create_individual(&[0.0, 0.0, 0.0]), // 0
            create_individual(&[4.0, 3.0, 2.0]), // 9
            create_individual(&[1.0, 2.0, 4.0]), // 7
            create_individual(&[1.0, 2.0, 3.0]), // 6
        ];

        for _ in 0..20 {
            population = genetic_algorithm.evolve(&mut rng, &population);
        }

        let expected_population = vec![
            create_individual(&[0.7887951, 2.8633232, 5.244236]), // 8.8963543
            create_individual(&[0.66027343, 3.0064118, 5.348094]), // 9.01477923
            create_individual(&[1.0781169, 3.2106802, 5.244236]), // 9.5330331
            create_individual(&[0.6972294, 3.0064118, 5.745471]), // 9.4491122
        ];

        assert_eq!(population, expected_population);
    }
}
