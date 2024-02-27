pub use self::{animal::*, food::*, world::*};

mod animal;
mod food;
mod world;

use nalgebra as na;
use rand::{Rng, RngCore};

pub struct Simulation {
    world: World,
}

impl Simulation {
    pub fn random(rng: &mut dyn RngCore) -> Self {
        Self {
            world: World::random(rng),
        }
    }

    pub fn world(&self) -> &World {
        &self.world
    }
}
