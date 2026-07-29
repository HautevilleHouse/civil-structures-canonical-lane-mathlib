import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure FoundationStabilityPackage where
  soilBearingCapacity : Prop
  settlementLimit : Prop
  overturningResistance : Prop
  slidingResistance : Prop
  bearingPressureDistribution : Prop

structure FoundationStabilityEvidence (F : FoundationStabilityPackage) where
  soilBearingCapacityClosed : F.soilBearingCapacity
  settlementLimitClosed : F.settlementLimit
  overturningResistanceClosed : F.overturningResistance
  slidingResistanceClosed : F.slidingResistance
  bearingPressureDistributionClosed : F.bearingPressureDistribution

def FoundationStabilityClosed (F : FoundationStabilityPackage) : Prop :=
  F.soilBearingCapacity ∧ F.settlementLimit ∧ F.overturningResistance ∧ F.slidingResistance ∧ F.bearingPressureDistribution

theorem foundation_stability_closed_from_evidence (F : FoundationStabilityPackage) (E : FoundationStabilityEvidence F) :
    FoundationStabilityClosed F := by
  exact And.intro E.soilBearingCapacityClosed
    (And.intro E.settlementLimitClosed
      (And.intro E.overturningResistanceClosed
        (And.intro E.slidingResistanceClosed E.bearingPressureDistributionClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
