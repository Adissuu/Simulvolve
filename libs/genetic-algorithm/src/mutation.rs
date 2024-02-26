pub use self::gaussian_mutation::*;
use crate::Chromosome;
use crate::RngCore;

mod gaussian_mutation;

pub trait MutationMethod {
    fn mutate(&self, rng: &mut dyn RngCore, child: &mut Chromosome);
}
