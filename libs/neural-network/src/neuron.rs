use crate::*;

#[derive(Clone, Debug)]
pub struct Neuron {
    pub(crate) bias: f32,
    pub(crate) weights: Vec<f32>,
}

impl Neuron {
    /// Creates a new neuron with the given bias and weights.
    pub fn new(bias: f32, weights: Vec<f32>) -> Self {
        Self { bias, weights }
    }

    pub fn random(random: &mut dyn rand::RngCore, input_size: usize) -> Self {
        let bias = random.gen_range(-1.0..=1.0);
        let weights = (0..input_size)
            .map(|_| random.gen_range(-1.0..=1.0))
            .collect();

        Self::new(bias, weights)
    }

    pub fn propagate(&self, inputs: &[f32]) -> f32 {
        assert_eq!(inputs.len(), self.weights.len());

        let output = inputs
            .iter()
            .zip(&self.weights)
            .map(|(input, weight)| input * weight)
            .sum::<f32>();

        (self.bias + output).max(0.0)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use approx::assert_relative_eq;

    mod random {
        use super::*;
        use rand::SeedableRng;
        use rand_chacha::ChaCha8Rng;

        #[test]
        fn test_random_neurons() {
            let mut rand = ChaCha8Rng::from_seed(Default::default());
            let neuron = Neuron::random(&mut rand, 5);

            assert_relative_eq!(neuron.bias, -0.6255188);
            assert_relative_eq!(
                neuron.weights.as_slice(),
                &[0.67383957, 0.8181262, 0.26284897, 0.5238807, -0.53516835].as_ref()
            );
        }
    }

    mod propagate {
        use super::*;

        #[test]
        fn test_propagation_with_input() {
            let neuron = Neuron {
                bias: 0.5,
                weights: vec![-0.4, 0.7],
            };

            assert_relative_eq!(neuron.propagate(&[-10.0, -10.0]), 0.0);
            assert_relative_eq!(
                neuron.propagate(&[0.6, 0.9]),
                (-0.4 * 0.6) + (0.7 * 0.9) + 0.5
            );
        }
    }
}
