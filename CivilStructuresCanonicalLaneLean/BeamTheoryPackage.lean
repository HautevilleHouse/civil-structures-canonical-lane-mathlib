import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure BeamTheoryPackage where
  bendingMoment : Prop
  shearForce : Prop
  deflection : Prop
  stressDistribution : Prop
  crossSectionResistance : Prop

structure BeamTheoryEvidence (B : BeamTheoryPackage) where
  bendingMomentClosed : B.bendingMoment
  shearForceClosed : B.shearForce
  deflectionClosed : B.deflection
  stressDistributionClosed : B.stressDistribution
  crossSectionResistanceClosed : B.crossSectionResistance

def BeamTheoryClosed (B : BeamTheoryPackage) : Prop :=
  B.bendingMoment ∧ B.shearForce ∧ B.deflection ∧ B.stressDistribution ∧ B.crossSectionResistance

theorem beam_theory_closed_from_evidence (B : BeamTheoryPackage) (E : BeamTheoryEvidence B) :
    BeamTheoryClosed B := by
  exact And.intro E.bendingMomentClosed
    (And.intro E.shearForceClosed
      (And.intro E.deflectionClosed
        (And.intro E.stressDistributionClosed E.crossSectionResistanceClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
