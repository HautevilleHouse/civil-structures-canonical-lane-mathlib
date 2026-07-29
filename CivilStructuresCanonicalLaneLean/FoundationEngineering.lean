import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure FoundationEngineeringPackage where
  bearingCapacity : Prop
  settlement : Prop
  slopeStability : Prop
  retainingWallDesign : Prop
  pileFoundation : Prop

structure FoundationEngineeringEvidence (F : FoundationEngineeringPackage) where
  bearingCapacityClosed : F.bearingCapacity
  settlementClosed : F.settlement
  slopeStabilityClosed : F.slopeStability
  retainingWallDesignClosed : F.retainingWallDesign
  pileFoundationClosed : F.pileFoundation

def FoundationEngineeringClosed (F : FoundationEngineeringPackage) : Prop :=
  F.bearingCapacity ∧ F.settlement ∧ F.slopeStability ∧ F.retainingWallDesign ∧ F.pileFoundation

theorem foundation_engineering_closed_from_evidence (F : FoundationEngineeringPackage) (E : FoundationEngineeringEvidence F) :
    FoundationEngineeringClosed F := by
  exact And.intro E.bearingCapacityClosed
    (And.intro E.settlementClosed
      (And.intro E.slopeStabilityClosed
        (And.intro E.retainingWallDesignClosed E.pileFoundationClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
