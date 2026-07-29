import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let F : GrowthBoundaryFunctional := A.object
  GrowthBoundaryFunctionalClosed F

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- proof placeholder
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse