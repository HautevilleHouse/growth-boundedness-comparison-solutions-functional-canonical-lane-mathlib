import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure AdmissibleClass where
  growthFunction : GrowthFunction
  endpointComparison : Prop
  remainderRecorded : Prop
  gateWitness : endpointComparison ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrowthBoundednessClosed A.growthFunction ∧ (A.endpointComparison ∨ A.remainderRecorded)

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse