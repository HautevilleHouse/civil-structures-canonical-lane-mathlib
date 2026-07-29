import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure FoundationDesign where
  soilCapacity : Prop
  settlementControl : Prop
  bearingPressure : Prop
  slidingResistance : Prop
  overturningCheck : Prop

structure FoundationDesignEvidence (F : FoundationDesign) where
  soilCapacityClosed : F.soilCapacity
  settlementControlClosed : F.settlementControl
  bearingPressureClosed : F.bearingPressure
  slidingResistanceClosed : F.slidingResistance
  overturningCheckClosed : F.overturningCheck

def FoundationDesignClosed (F : FoundationDesign) : Prop :=
  F.soilCapacity ∧ F.settlementControl ∧ F.bearingPressure ∧ F.slidingResistance ∧ F.overturningCheck

theorem foundation_design_closed_from_evidence (F : FoundationDesign) (E : FoundationDesignEvidence F) : FoundationDesignClosed F := by
  exact And.intro E.soilCapacityClosed
    (And.intro E.settlementControlClosed
      (And.intro E.bearingPressureClosed
        (And.intro E.slidingResistanceClosed E.overturningCheckClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse