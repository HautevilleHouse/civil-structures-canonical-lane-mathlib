import CivilStructuresCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

def ConstrainedStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_structure_endgame (A : AdmissibleClass) :
    ConstrainedStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilStructuresCanonicalLaneLean
end HautevilleHouse