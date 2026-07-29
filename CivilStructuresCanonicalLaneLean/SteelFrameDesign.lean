import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SteelFrameDesignPackage where
  memberStrength : Prop
  connectionDesign : Prop
  stabilityBracing : Prop
  serviceabilityDeflection : Prop
  seismicProvisions : Prop

structure SteelFrameDesignEvidence (S : SteelFrameDesignPackage) where
  memberStrengthClosed : S.memberStrength
  connectionDesignClosed : S.connectionDesign
  stabilityBracingClosed : S.stabilityBracing
  serviceabilityDeflectionClosed : S.serviceabilityDeflection
  seismicProvisionsClosed : S.seismicProvisions

def SteelFrameDesignClosed (S : SteelFrameDesignPackage) : Prop :=
  S.memberStrength ∧ S.connectionDesign ∧ S.stabilityBracing ∧ S.serviceabilityDeflection ∧ S.seismicProvisions

theorem steel_frame_design_closed_from_evidence (S : SteelFrameDesignPackage) (E : SteelFrameDesignEvidence S) :
    SteelFrameDesignClosed S := by
  exact And.intro E.memberStrengthClosed
    (And.intro E.connectionDesignClosed
      (And.intro E.stabilityBracingClosed
        (And.intro E.serviceabilityDeflectionClosed E.seismicProvisionsClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
