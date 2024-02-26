use crate::*;
use rand::prelude::SliceRandom;

#[derive(Clone, Debug, Default)]
pub struct RouletteWheelSelection;

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
mod test {
    use super::*;
    use rand::SeedableRng;
    use rand_chacha::ChaCha8Rng;
    use std::collections::BTreeMap;

    #[test]
    fn test_roulette_wheel() {
        let method = RouletteWheelSelection::default();
        let mut rng = ChaCha8Rng::from_seed(Default::default());

        let population = vec![
            TestIndividual::new(1.0),
            TestIndividual::new(2.0),
            TestIndividual::new(3.0),
            TestIndividual::new(4.0),
        ];

        let actual: BTreeMap<i32, _> = (0..100).map(|_| method.select(&mut rng, &population)).fold(
            Default::default(),
            |mut histogram, individual| {
                *histogram.entry(individual.fitness() as _).or_insert(0) += 1;

                histogram
            },
        );

        let expected = maplit::btreemap! {
            1 => 11,
            2 => 18,
            3 => 36,
            4 => 35,
        };

        assert_eq!(actual, expected);
    }
}
