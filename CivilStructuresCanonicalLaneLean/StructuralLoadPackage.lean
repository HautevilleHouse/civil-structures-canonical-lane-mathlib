import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure StructuralLoadPackage where
  deadLoad : Prop
  liveLoad : Prop
  windLoad : Prop
  seismicLoad : Prop
  loadCombination : Prop

structure StructuralLoadEvidence (L : StructuralLoadPackage) where
  deadLoadClosed : L.deadLoad
  liveLoadClosed : L.liveLoad
  windLoadClosed : L.windLoad
  seismicLoadClosed : L.seismicLoad
  loadCombinationClosed : L.loadCombination

def StructuralLoadClosed (L : StructuralLoadPackage) : Prop :=
  L.deadLoad ∧ L.liveLoad ∧ L.windLoad ∧ L.seismicLoad ∧ L.loadCombination

theorem structural_load_closed_from_evidence (L : StructuralLoadPackage) (E : StructuralLoadEvidence L) : StructuralLoadClosed L := by
  exact And.intro E.deadLoadClosed
    (And.intro E.liveLoadClosed
      (And.intro E.windLoadClosed
        (And.intro E.seismicLoadClosed E.loadCombinationClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
