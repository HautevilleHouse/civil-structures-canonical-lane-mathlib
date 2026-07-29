import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure StructuralAnalysisPackage where
  linearElasticAnalysis : Prop
  secondOrderAnalysis : Prop
  plasticAnalysis : Prop
  dynamicAnalysis : Prop
  stabilityAnalysis : Prop
  finiteElementModel : Prop

structure StructuralAnalysisEvidence (A : StructuralAnalysisPackage) where
  linearElasticAnalysisClosed : A.linearElasticAnalysis
  secondOrderAnalysisClosed : A.secondOrderAnalysis
  plasticAnalysisClosed : A.plasticAnalysis
  dynamicAnalysisClosed : A.dynamicAnalysis
  stabilityAnalysisClosed : A.stabilityAnalysis
  finiteElementModelClosed : A.finiteElementModel

def StructuralAnalysisClosed (A : StructuralAnalysisPackage) : Prop :=
  A.linearElasticAnalysis ∧ A.secondOrderAnalysis ∧ A.plasticAnalysis ∧
  A.dynamicAnalysis ∧ A.stabilityAnalysis ∧ A.finiteElementModel

theorem structural_analysis_closed_from_evidence (A : StructuralAnalysisPackage)
    (E : StructuralAnalysisEvidence A) : StructuralAnalysisClosed A := by
  exact And.intro E.linearElasticAnalysisClosed
    (And.intro E.secondOrderAnalysisClosed
      (And.intro E.plasticAnalysisClosed
        (And.intro E.dynamicAnalysisClosed
          (And.intro E.stabilityAnalysisClosed E.finiteElementModelClosed))))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse