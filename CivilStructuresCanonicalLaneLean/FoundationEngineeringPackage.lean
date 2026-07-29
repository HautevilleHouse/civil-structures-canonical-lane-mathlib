import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure FoundationEngineeringPackage where
  bearingCapacity : Prop
  settlementAnalysis : Prop
  pileCapacity : Prop
  retainingWallStability : Prop
  slopeStability : Prop
  liquefactionAssessment : Prop

structure FoundationEngineeringEvidence (F : FoundationEngineeringPackage) where
  bearingCapacityClosed : F.bearingCapacity
  settlementAnalysisClosed : F.settlementAnalysis
  pileCapacityClosed : F.pileCapacity
  retainingWallStabilityClosed : F.retainingWallStability
  slopeStabilityClosed : F.slopeStability
  liquefactionAssessmentClosed : F.liquefactionAssessment

def FoundationEngineeringClosed (F : FoundationEngineeringPackage) : Prop :=
  F.bearingCapacity ∧ F.settlementAnalysis ∧ F.pileCapacity ∧
  F.retainingWallStability ∧ F.slopeStability ∧ F.liquefactionAssessment

theorem foundation_engineering_closed_from_evidence (F : FoundationEngineeringPackage)
    (E : FoundationEngineeringEvidence F) : FoundationEngineeringClosed F := by
  exact And.intro E.bearingCapacityClosed
    (And.intro E.settlementAnalysisClosed
      (And.intro E.pileCapacityClosed
        (And.intro E.retainingWallStabilityClosed
          (And.intro E.slopeStabilityClosed E.liquefactionAssessmentClosed))))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse