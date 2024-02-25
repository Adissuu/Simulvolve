use crate::*;

#[derive(Clone, Debug)]
pub struct Layer {
    pub(crate) neurons: Vec<Neuron>,
}

impl Layer {
    pub fn new(neurons: Vec<Neuron>) -> Self {
        assert!(!neurons.is_empty());

        assert!(neurons
            .iter()
            .all(|neuron| neuron.weights.len() == neurons[0].weights.len()));

        Self { neurons }
    }

    pub fn random(input_size: usize, output_size: usize) -> Self {
        let random = &mut rand::thread_rng();

        let neurons = (0..output_size)
            .map(|_| Neuron::random(random, input_size))
            .collect();

        Self::new(neurons)
    }

    pub fn propagate(&self, inputs: Vec<f32>) -> Vec<f32> {
        self.neurons
            .iter()
            .map(|neuron| neuron.propagate(&inputs))
            .collect()
    }
}
