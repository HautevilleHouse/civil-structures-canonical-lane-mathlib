import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure DesignCodeCompliancePackage where
  buildingCode : Prop
  loadFactors : Prop
  resistanceFactors : Prop
  deflectionLimits : Prop
  serviceabilityCriteria : Prop

structure DesignCodeComplianceEvidence (C : DesignCodeCompliancePackage) where
  buildingCodeClosed : C.buildingCode
  loadFactorsClosed : C.loadFactors
  resistanceFactorsClosed : C.resistanceFactors
  deflectionLimitsClosed : C.deflectionLimits
  serviceabilityCriteriaClosed : C.serviceabilityCriteria

def DesignCodeComplianceClosed (C : DesignCodeCompliancePackage) : Prop :=
  C.buildingCode ∧ C.loadFactors ∧ C.resistanceFactors ∧ C.deflectionLimits ∧ C.serviceabilityCriteria

theorem design_code_compliance_closed_from_evidence (C : DesignCodeCompliancePackage) (E : DesignCodeComplianceEvidence C) : DesignCodeComplianceClosed C := by
  exact And.intro E.buildingCodeClosed
    (And.intro E.loadFactorsClosed
      (And.intro E.resistanceFactorsClosed
        (And.intro E.deflectionLimitsClosed E.serviceabilityCriteriaClosed)))

end CivilStructuresCanonicalLaneLean
end HautevilleHouse
