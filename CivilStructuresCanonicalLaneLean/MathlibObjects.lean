import CivilStructuresCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure StructureSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CivilStructuresAdmittedObject where
  space : StructureSpace
  loadBearing : Prop
  materialProperties : Prop
  boundaryConditions : Prop
  conclusion : loadBearing ∧ materialProperties ∧ boundaryConditions

structure StructureEndgameState where
  object : CivilStructuresAdmittedObject

def BridgeClosed (O : CivilStructuresAdmittedObject) : Prop :=
  O.loadBearing ∧ O.materialProperties ∧ O.boundaryConditions

end CivilStructuresCanonicalLaneLean
end HautevilleHouse