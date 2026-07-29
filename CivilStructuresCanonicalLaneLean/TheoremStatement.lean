import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure CivilStructuresTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  structureConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceCivilStructuresTheoremStatement : CivilStructuresTheoremStatement :=
  { sourceKey := "civil-structures-canonical-lane",
    theoremName := "CivilStructuresCanonicalLaneLean",
    theoremObject := "Bridge and Gate closure for civil structures",
    classicalBoundary := "carried",
    structureConstrainedStatement := "structure-constrained theorem certificate internalized through admissible class",
    certificateLane := "structure_constrained",
    carriedRemainder := "classical source boundary remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceCivilStructuresTheoremStatement.sourceKey = "civil-structures-canonical-lane" := by
  rfl

end CivilStructuresCanonicalLaneLean
end HautevilleHouse