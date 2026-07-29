import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure AxialLoadPackage where
  column : Type u
  material : Type v
  load : Type w
  crossSection : Type x
  slendernessRatio : Type y
  criticalBucklingLoad : Prop
  yieldStress : Prop
  youngModulus : Prop
  momentInertia : Prop
  area : Prop

structure AxialLoadEvidence (G : AxialLoadPackage) where
  criticalBucklingLoadClosed : G.criticalBucklingLoad
  yieldStressClosed : G.yieldStress
  youngModulusClosed : G.youngModulus
  momentInertiaClosed : G.momentInertia
  areaClosed : G.area

def AxialLoadClosed (G : AxialLoadPackage) : Prop :=
  G.criticalBucklingLoad ∧ G.yieldStress ∧ G.youngModulus ∧ G.momentInertia ∧ G.area

theorem axial_load_closed_from_evidence
    (G : AxialLoadPackage) (E : AxialLoadEvidence G) :
    AxialLoadClosed G := by
  exact And.intro E.criticalBucklingLoadClosed
    (And.intro E.yieldStressClosed
      (And.intro E.youngModulusClosed
        (And.intro E.momentInertiaClosed E.areaClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse