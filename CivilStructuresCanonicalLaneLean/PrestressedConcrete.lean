import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure PrestressedConcretePackage where
  tendonProfile : Prop
  prestressLoss : Prop
  flexuralCapacity : Prop
  shearCapacity : Prop
  crackControl : Prop

structure PrestressedConcreteEvidence (P : PrestressedConcretePackage) where
  tendonProfileClosed : P.tendonProfile
  prestressLossClosed : P.prestressLoss
  flexuralCapacityClosed : P.flexuralCapacity
  shearCapacityClosed : P.shearCapacity
  crackControlClosed : P.crackControl

def PrestressedConcreteClosed (P : PrestressedConcretePackage) : Prop :=
  P.tendonProfile ∧ P.prestressLoss ∧ P.flexuralCapacity ∧ P.shearCapacity ∧ P.crackControl

theorem prestressed_concrete_closed_from_evidence (P : PrestressedConcretePackage) (E : PrestressedConcreteEvidence P) :
    PrestressedConcreteClosed P := by
  exact And.intro E.tendonProfileClosed
    (And.intro E.prestressLossClosed
      (And.intro E.flexuralCapacityClosed
        (And.intro E.shearCapacityClosed E.crackControlClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
