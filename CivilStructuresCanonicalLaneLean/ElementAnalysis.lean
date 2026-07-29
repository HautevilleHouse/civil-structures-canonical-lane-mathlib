import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure ElementAnalysisPackage where
  displacementField : Prop
  stressDistribution : Prop
  strainCompatibility : Prop
  equilibriumCondition : Prop
  materialConstitutiveLaw : Prop

structure ElementAnalysisEvidence (EA : ElementAnalysisPackage) where
  displacementFieldClosed : EA.displacementField
  stressDistributionClosed : EA.stressDistribution
  strainCompatibilityClosed : EA.strainCompatibility
  equilibriumConditionClosed : EA.equilibriumCondition
  materialConstitutiveLawClosed : EA.materialConstitutiveLaw

def ElementAnalysisClosed (EA : ElementAnalysisPackage) : Prop :=
  EA.displacementField ∧ EA.stressDistribution ∧ EA.strainCompatibility ∧ EA.equilibriumCondition ∧ EA.materialConstitutiveLaw

theorem element_analysis_closed_from_evidence (EA : ElementAnalysisPackage) (E : ElementAnalysisEvidence EA) :
    ElementAnalysisClosed EA := by
  exact And.intro E.displacementFieldClosed
    (And.intro E.stressDistributionClosed
      (And.intro E.strainCompatibilityClosed
        (And.intro E.equilibriumConditionClosed E.materialConstitutiveLawClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
