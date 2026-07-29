import Mathlib

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456abc123def456abc123def456abc123"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/compute_factors.py", sha256 := "abc123", functionCount := 3, classCount := 0, assignmentCount := 5, parseOk := true },
   { path := "scripts/verify_design.py", sha256 := "def456", functionCount := 2, classCount := 0, assignmentCount := 3, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/compute_factors.py", name := "compute_safety_factor", args := ["load", "resistance"], returns := "float", doc := "Computes safety factor.", line := 15, isAsync := false },
   { file := "scripts/verify_design.py", name := "verify", args := ["factors"], returns := "bool", doc := "Verifies design.", line := 20, isAsync := false }]

end CivilStructuresCanonicalLaneLean
end HautevilleHouse