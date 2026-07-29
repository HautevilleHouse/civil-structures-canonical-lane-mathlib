import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SeismicPerformance where
  lateralForceResistance : Prop
  ductilityDemand : Prop
  energyDissipation : Prop
  driftControl : Prop
  collapsePrevention : Prop

structure SeismicPerformanceEvidence (S : SeismicPerformance) where
  lateralForceResistanceClosed : S.lateralForceResistance
  ductilityDemandClosed : S.ductilityDemand
  energyDissipationClosed : S.energyDissipation
  driftControlClosed : S.driftControl
  collapsePreventionClosed : S.collapsePrevention

def SeismicPerformanceClosed (S : SeismicPerformance) : Prop :=
  S.lateralForceResistance ∧ S.ductilityDemand ∧ S.energyDissipation ∧ S.driftControl ∧ S.collapsePrevention

theorem seismic_performance_closed_from_evidence (S : SeismicPerformance) (E : SeismicPerformanceEvidence S) : SeismicPerformanceClosed S := by
  exact And.intro E.lateralForceResistanceClosed
    (And.intro E.ductilityDemandClosed
      (And.intro E.energyDissipationClosed
        (And.intro E.driftControlClosed E.collapsePreventionClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse