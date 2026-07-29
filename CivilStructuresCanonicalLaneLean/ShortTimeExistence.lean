import CivilStructuresCanonicalLaneLean.RicciFlowPDE

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure ShortTimeExistencePackage {G : AxialLoadPackage}
    (F : MomentDistributionPackage G) where
  initialLoadingRegular : Prop
  instantaneousResponse : Prop
  localEquilibriumInterval : Prop
  uniquenessOnOverlap : Prop
  smoothDependenceOnLoad : Prop

structure ShortTimeExistenceEvidence {G : AxialLoadPackage}
    {F : MomentDistributionPackage G} (S : ShortTimeExistencePackage F) where
  initialLoadingRegularClosed : S.initialLoadingRegular
  instantaneousResponseClosed : S.instantaneousResponse
  localEquilibriumIntervalClosed : S.localEquilibriumInterval
  uniquenessOnOverlapClosed : S.uniquenessOnOverlap
  smoothDependenceOnLoadClosed : S.smoothDependenceOnLoad

def ShortTimeExistenceClosed {G : AxialLoadPackage}
    {F : MomentDistributionPackage G} (S : ShortTimeExistencePackage F) : Prop :=
  S.initialLoadingRegular ∧ S.instantaneousResponse ∧ S.localEquilibriumInterval ∧
  S.uniquenessOnOverlap ∧ S.smoothDependenceOnLoad

theorem short_time_existence_closed_from_evidence
    {G : AxialLoadPackage} {F : MomentDistributionPackage G}
    (S : ShortTimeExistencePackage F) (E : ShortTimeExistenceEvidence S) :
    ShortTimeExistenceClosed S := by
  exact And.intro E.initialLoadingRegularClosed
    (And.intro E.instantaneousResponseClosed
      (And.intro E.localEquilibriumIntervalClosed
        (And.intro E.uniquenessOnOverlapClosed E.smoothDependenceOnLoadClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse