import CivilStructuresCanonicalLaneLean.Noncollapsing

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SingularityModelsPackage {G : AxialLoadPackage}
    {F : MomentDistributionPackage G} {S : ShortTimeExistencePackage F}
    (Epkg : PlasticHingePackage S) where
  hingeFormationSequence : Prop
  collapseMechanism : Prop
  plasticLimitLoad : Prop
  ductilityCapacity : Prop

structure SingularityModelsEvidence {G : AxialLoadPackage}
    {F : MomentDistributionPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PlasticHingePackage S} (Q : SingularityModelsPackage Epkg) where
  hingeFormationSequenceClosed : Q.hingeFormationSequence
  collapseMechanismClosed : Q.collapseMechanism
  plasticLimitLoadClosed : Q.plasticLimitLoad
  ductilityCapacityClosed : Q.ductilityCapacity

def SingularityModelsClosed {G : AxialLoadPackage}
    {F : MomentDistributionPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PlasticHingePackage S} (Q : SingularityModelsPackage Epkg) : Prop :=
  Q.hingeFormationSequence ∧ Q.collapseMechanism ∧
  Q.plasticLimitLoad ∧ Q.ductilityCapacity

theorem singularity_models_closed_from_evidence
    {G : AxialLoadPackage} {F : MomentDistributionPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : PlasticHingePackage S}
    (Q : SingularityModelsPackage Epkg) (E : SingularityModelsEvidence Q) :
    SingularityModelsClosed Q := by
  exact And.intro E.hingeFormationSequenceClosed
    (And.intro E.collapseMechanismClosed
      (And.intro E.plasticLimitLoadClosed E.ductilityCapacityClosed))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse