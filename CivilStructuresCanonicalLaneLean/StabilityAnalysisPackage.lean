import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure StabilityAnalysisPackage where
  bucklingLoad : Prop
  eulerBuckling : Prop
  imperfectionSensitivity : Prop
  postBucklingBehavior : Prop
  stabilityCriteria : Prop

structure StabilityAnalysisEvidence (S : StabilityAnalysisPackage) where
  bucklingLoadClosed : S.bucklingLoad
  eulerBucklingClosed : S.eulerBuckling
  imperfectionSensitivityClosed : S.imperfectionSensitivity
  postBucklingBehaviorClosed : S.postBucklingBehavior
  stabilityCriteriaClosed : S.stabilityCriteria

def StabilityAnalysisClosed (S : StabilityAnalysisPackage) : Prop :=
  S.bucklingLoad ∧ S.eulerBuckling ∧ S.imperfectionSensitivity ∧ S.postBucklingBehavior ∧ S.stabilityCriteria

theorem stability_analysis_closed_from_evidence (S : StabilityAnalysisPackage) (E : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro E.bucklingLoadClosed
    (And.intro E.eulerBucklingClosed
      (And.intro E.imperfectionSensitivityClosed
        (And.intro E.postBucklingBehaviorClosed E.stabilityCriteriaClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
