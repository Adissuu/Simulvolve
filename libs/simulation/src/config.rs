use crate::*;
use serde::Deserialize;
use serde::Serialize;

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Config {
    pub brain_neurons: usize,

    pub ga_reverse: usize,
    pub ga_mut_chance: f32,
    pub ga_mut_coeff: f32,
}

impl Default for Config {
    fn default() -> Self {
        Self {
            brain_neurons: 9,

            ga_reverse: 0,
            ga_mut_chance: 0.01,
            ga_mut_coeff: 0.3,
        }
    }
}
