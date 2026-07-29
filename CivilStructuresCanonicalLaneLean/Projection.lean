import CivilStructuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def structureProjection : Projection StructureEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem structure_projection_idempotent (x : StructureEndgameState) :
    structureProjection.toFun (structureProjection.toFun x) = structureProjection.toFun x := by
  exact structureProjection.idempotent x

end CivilStructuresCanonicalLaneLean
end HautevilleHouse