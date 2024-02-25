use rand::Rng;

pub use self::layer_topology::*;
use self::{layer::*, neuron::*};

mod layer;
mod layer_topology;
mod neuron;

#[derive(Clone, Debug)]
pub struct Network {
    layers: Vec<Layer>,
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
