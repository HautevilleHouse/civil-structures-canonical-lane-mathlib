import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SeismicDesignPackage where
  responseSpectrum : Prop
  timeHistoryAnalysis : Prop
  pushoverAnalysis : Prop
  baseIsolation : Prop
  energyDissipation : Prop
  ductilityDemand : Prop

structure SeismicDesignEvidence (S : SeismicDesignPackage) where
  responseSpectrumClosed : S.responseSpectrum
  timeHistoryAnalysisClosed : S.timeHistoryAnalysis
  pushoverAnalysisClosed : S.pushoverAnalysis
  baseIsolationClosed : S.baseIsolation
  energyDissipationClosed : S.energyDissipation
  ductilityDemandClosed : S.ductilityDemand

def SeismicDesignClosed (S : SeismicDesignPackage) : Prop :=
  S.responseSpectrum ∧ S.timeHistoryAnalysis ∧ S.pushoverAnalysis ∧
  S.baseIsolation ∧ S.energyDissipation ∧ S.ductilityDemand

theorem seismic_design_closed_from_evidence (S : SeismicDesignPackage)
    (E : SeismicDesignEvidence S) : SeismicDesignClosed S := by
  exact And.intro E.responseSpectrumClosed
    (And.intro E.timeHistoryAnalysisClosed
      (And.intro E.pushoverAnalysisClosed
        (And.intro E.baseIsolationClosed
          (And.intro E.energyDissipationClosed E.ductilityDemandClosed))))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse