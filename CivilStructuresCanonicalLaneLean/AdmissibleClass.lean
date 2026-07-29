import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure AdmissibleClass where
  object : CivilStructuresAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilStructuresCanonicalLaneLean
end HautevilleHouse