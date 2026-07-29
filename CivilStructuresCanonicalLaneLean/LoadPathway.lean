import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure LoadPathway where
  forceType : Prop
  direction : Prop
  magnitude : Prop
  distribution : Prop
  stabilityCheck : Prop

structure LoadPathwayEvidence (L : LoadPathway) where
  forceTypeClosed : L.forceType
  directionClosed : L.direction
  magnitudeClosed : L.magnitude
  distributionClosed : L.distribution
  stabilityCheckClosed : L.stabilityCheck

def LoadPathwayClosed (L : LoadPathway) : Prop :=
  L.forceType ∧ L.direction ∧ L.magnitude ∧ L.distribution ∧ L.stabilityCheck

theorem load_pathway_closed_from_evidence (L : LoadPathway) (E : LoadPathwayEvidence L) : LoadPathwayClosed L := by
  exact And.intro E.forceTypeClosed
    (And.intro E.directionClosed
      (And.intro E.magnitudeClosed
        (And.intro E.distributionClosed E.stabilityCheckClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse