import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure FiniteElementFormulationPackage where
  shapeFunctions : Prop
  stiffnessMatrix : Prop
  massMatrix : Prop
  loadVector : Prop
  boundaryConditions : Prop

structure FiniteElementFormulationEvidence (F : FiniteElementFormulationPackage) where
  shapeFunctionsClosed : F.shapeFunctions
  stiffnessMatrixClosed : F.stiffnessMatrix
  massMatrixClosed : F.massMatrix
  loadVectorClosed : F.loadVector
  boundaryConditionsClosed : F.boundaryConditions

def FiniteElementFormulationClosed (F : FiniteElementFormulationPackage) : Prop :=
  F.shapeFunctions ∧ F.stiffnessMatrix ∧ F.massMatrix ∧ F.loadVector ∧ F.boundaryConditions

theorem finite_element_formulation_closed_from_evidence (F : FiniteElementFormulationPackage) (E : FiniteElementFormulationEvidence F) : FiniteElementFormulationClosed F := by
  exact And.intro E.shapeFunctionsClosed
    (And.intro E.stiffnessMatrixClosed
      (And.intro E.massMatrixClosed
        (And.intro E.loadVectorClosed E.boundaryConditionsClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
