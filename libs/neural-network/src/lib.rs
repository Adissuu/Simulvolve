use rand::Rng;

pub struct Network {
    layers: Vec<Layer>,
}

struct Layer {
    neurons: Vec<Neuron>,
}

struct Neuron {
    bias: f32,
    weights: Vec<f32>,
}

pub struct LayerTopology {
    pub neurons: usize,
}

impl Network {
    #![allow(warnings)]
    pub fn new(layers: Vec<Layer>) -> Self {
        Self { layers }
    }

    pub fn random(layers: &[LayerTopology]) -> Self {
        assert!(layers.len() > 1);

        let layers = layers
            .windows(2)
            .map(|layers| Layer::random(layers[0].neurons, layers[1].neurons))
            .collect();

        Self { layers }
    }

    pub fn propagate(&self, inputs: Vec<f32>) -> Vec<f32> {
        self.layers
            .iter()
            .fold(inputs, |inputs, layer| layer.propagate(inputs))
    }
}

impl Layer {
    pub fn random(input_size: usize, output_size: usize) -> Self {
        let random = &mut rand::thread_rng();

        let neurons = (0..output_size)
            .map(|_| Neuron::random(random, input_size))
            .collect();

        Self { neurons }
    }

    pub fn propagate(&self, inputs: Vec<f32>) -> Vec<f32> {
        self.neurons
            .iter()
            .map(|neuron| neuron.propagate(&inputs))
            .collect()
    }
}

impl Neuron {
    pub fn random(random: &mut dyn rand::RngCore, input_size: usize) -> Self {
        let bias = random.gen_range(-1.0..=1.0);

        let weights = (0..input_size)
            .map(|_| random.gen_range(-1.0..=1.0))
            .collect();

        Self { bias, weights }
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
        fn test() {
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
        fn test() {
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
