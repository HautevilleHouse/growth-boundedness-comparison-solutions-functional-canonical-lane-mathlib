import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure AdmissibleComparisonClass where
  growthBound : ℝ
  functionalValue : ℝ
  comparisonInequality : growthBound ≤ functionalValue
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleComparisonClass) : Prop :=
  A.comparisonInequality ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse