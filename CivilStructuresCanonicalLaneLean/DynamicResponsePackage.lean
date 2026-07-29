import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure DynamicResponsePackage where
  naturalFrequency : Prop
  modeShape : Prop
  dampingRatio : Prop
  transientResponse : Prop
  modalSuperposition : Prop

structure DynamicResponseEvidence (D : DynamicResponsePackage) where
  naturalFrequencyClosed : D.naturalFrequency
  modeShapeClosed : D.modeShape
  dampingRatioClosed : D.dampingRatio
  transientResponseClosed : D.transientResponse
  modalSuperpositionClosed : D.modalSuperposition

def DynamicResponseClosed (D : DynamicResponsePackage) : Prop :=
  D.naturalFrequency ∧ D.modeShape ∧ D.dampingRatio ∧ D.transientResponse ∧ D.modalSuperposition

theorem dynamic_response_closed_from_evidence (D : DynamicResponsePackage) (E : DynamicResponseEvidence D) : DynamicResponseClosed D := by
  exact And.intro E.naturalFrequencyClosed
    (And.intro E.modeShapeClosed
      (And.intro E.dampingRatioClosed
        (And.intro E.transientResponseClosed E.modalSuperpositionClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
