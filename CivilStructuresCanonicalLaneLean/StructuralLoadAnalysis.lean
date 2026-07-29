import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure StructuralLoadPackage where
  liveLoad : Prop
  deadLoad : Prop
  windLoad : Prop
  seismicLoad : Prop
  loadCombination : Prop

structure StructuralLoadEvidence (L : StructuralLoadPackage) where
  liveLoadClosed : L.liveLoad
  deadLoadClosed : L.deadLoad
  windLoadClosed : L.windLoad
  seismicLoadClosed : L.seismicLoad
  loadCombinationClosed : L.loadCombination

def StructuralLoadClosed (L : StructuralLoadPackage) : Prop :=
  L.liveLoad ∧ L.deadLoad ∧ L.windLoad ∧ L.seismicLoad ∧ L.loadCombination

theorem structural_load_closed_from_evidence (L : StructuralLoadPackage) (E : StructuralLoadEvidence L) :
    StructuralLoadClosed L := by
  exact And.intro E.liveLoadClosed
    (And.intro E.deadLoadClosed
      (And.intro E.windLoadClosed
        (And.intro E.seismicLoadClosed E.loadCombinationClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
