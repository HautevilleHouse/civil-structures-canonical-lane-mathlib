import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure MaterialBehaviorPackage where
  elasticModulus : Prop
  yieldStrength : Prop
  poissonRatio : Prop
  creepModel : Prop
  fatigueLife : Prop

structure MaterialBehaviorEvidence (M : MaterialBehaviorPackage) where
  elasticModulusClosed : M.elasticModulus
  yieldStrengthClosed : M.yieldStrength
  poissonRatioClosed : M.poissonRatio
  creepModelClosed : M.creepModel
  fatigueLifeClosed : M.fatigueLife

def MaterialBehaviorClosed (M : MaterialBehaviorPackage) : Prop :=
  M.elasticModulus ∧ M.yieldStrength ∧ M.poissonRatio ∧ M.creepModel ∧ M.fatigueLife

theorem material_behavior_closed_from_evidence (M : MaterialBehaviorPackage) (E : MaterialBehaviorEvidence M) : MaterialBehaviorClosed M := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.yieldStrengthClosed
      (And.intro E.poissonRatioClosed
        (And.intro E.creepModelClosed E.fatigueLifeClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
