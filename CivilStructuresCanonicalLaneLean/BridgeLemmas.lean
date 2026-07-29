import CivilStructuresCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilStructuresCanonicalLaneLean
end HautevilleHouse