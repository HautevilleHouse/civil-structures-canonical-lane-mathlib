import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure MaterialStrengthPackage where
  concreteCompressiveStrength : Prop
  steelYieldStrength : Prop
  timberBendingStrength : Prop
  masonryCompressiveStrength : Prop
  fatigueLimit : Prop
  creepCoefficient : Prop

structure MaterialStrengthEvidence (M : MaterialStrengthPackage) where
  concreteCompressiveStrengthClosed : M.concreteCompressiveStrength
  steelYieldStrengthClosed : M.steelYieldStrength
  timberBendingStrengthClosed : M.timberBendingStrength
  masonryCompressiveStrengthClosed : M.masonryCompressiveStrength
  fatigueLimitClosed : M.fatigueLimit
  creepCoefficientClosed : M.creepCoefficient

def MaterialStrengthClosed (M : MaterialStrengthPackage) : Prop :=
  M.concreteCompressiveStrength ∧ M.steelYieldStrength ∧ M.timberBendingStrength ∧
  M.masonryCompressiveStrength ∧ M.fatigueLimit ∧ M.creepCoefficient

theorem material_strength_closed_from_evidence (M : MaterialStrengthPackage)
    (E : MaterialStrengthEvidence M) : MaterialStrengthClosed M := by
  exact And.intro E.concreteCompressiveStrengthClosed
    (And.intro E.steelYieldStrengthClosed
      (And.intro E.timberBendingStrengthClosed
        (And.intro E.masonryCompressiveStrengthClosed
          (And.intro E.fatigueLimitClosed E.creepCoefficientClosed))))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse