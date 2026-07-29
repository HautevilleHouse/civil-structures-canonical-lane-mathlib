import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure MaterialBehavior where
  stressStrainRelation : Prop
  yieldCriterion : Prop
  failureMode : Prop
  durability : Prop
  thermalResponse : Prop

structure MaterialBehaviorEvidence (M : MaterialBehavior) where
  stressStrainRelationClosed : M.stressStrainRelation
  yieldCriterionClosed : M.yieldCriterion
  failureModeClosed : M.failureMode
  durabilityClosed : M.durability
  thermalResponseClosed : M.thermalResponse

def MaterialBehaviorClosed (M : MaterialBehavior) : Prop :=
  M.stressStrainRelation ∧ M.yieldCriterion ∧ M.failureMode ∧ M.durability ∧ M.thermalResponse

theorem material_behavior_closed_from_evidence (M : MaterialBehavior) (E : MaterialBehaviorEvidence M) : MaterialBehaviorClosed M := by
  exact And.intro E.stressStrainRelationClosed
    (And.intro E.yieldCriterionClosed
      (And.intro E.failureModeClosed
        (And.intro E.durabilityClosed E.thermalResponseClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse