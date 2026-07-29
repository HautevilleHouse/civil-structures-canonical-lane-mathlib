import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SeismicAnalysisPackage where
  responseSpectrum : Prop
  modalAnalysis : Prop
  baseShear : Prop
  driftLimits : Prop
  detailingRequirements : Prop

structure SeismicAnalysisEvidence (S : SeismicAnalysisPackage) where
  responseSpectrumClosed : S.responseSpectrum
  modalAnalysisClosed : S.modalAnalysis
  baseShearClosed : S.baseShear
  driftLimitsClosed : S.driftLimits
  detailingRequirementsClosed : S.detailingRequirements

def SeismicAnalysisClosed (S : SeismicAnalysisPackage) : Prop :=
  S.responseSpectrum ∧ S.modalAnalysis ∧ S.baseShear ∧ S.driftLimits ∧ S.detailingRequirements

theorem seismic_analysis_closed_from_evidence (S : SeismicAnalysisPackage) (E : SeismicAnalysisEvidence S) :
    SeismicAnalysisClosed S := by
  exact And.intro E.responseSpectrumClosed
    (And.intro E.modalAnalysisClosed
      (And.intro E.baseShearClosed
        (And.intro E.driftLimitsClosed E.detailingRequirementsClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
