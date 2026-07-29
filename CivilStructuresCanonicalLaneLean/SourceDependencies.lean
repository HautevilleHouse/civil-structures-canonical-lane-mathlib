import CivilStructuresCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace CivilStructuresCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/compute_factors.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
   { file := "scripts/compute_factors.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
   { file := "scripts/verify_design.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
   { file := "scripts/verify_design.py", kind := "import", module := "json", name := "", alias := "", level := 0 }]

def sourceRuntimeModules : List String :=
  ["__future__.annotations", "math", "json"]

def sourcePathDependencies : List SourcePathDependency :=
  [{ file := "scripts/compute_factors.py", name := "DEFAULT_INPUTS", path := "artifacts/design_inputs.json", role := "artifact", line := 10 },
   { file := "scripts/verify_design.py", name := "DEFAULT_OUT", path := "artifacts/design_verified.json", role := "artifact", line := 12 }]

def sourceImportDependencyCount : Nat := 4
def sourceRuntimeModuleCount : Nat := 3
def sourcePathDependencyCount : Nat := 2

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 4 := by
  native_decide

end CivilStructuresCanonicalLaneLean
end HautevilleHouse