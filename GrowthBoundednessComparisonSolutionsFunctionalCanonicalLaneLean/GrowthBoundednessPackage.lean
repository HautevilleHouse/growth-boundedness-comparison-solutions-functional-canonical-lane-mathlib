import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure GrowthBoundednessPackage where
  functionSpace : Type u
  norm : functionSpace → ℝ
  comparisonPrinciple : Prop
  growthCondition : Prop
  boundednessEstimate : Prop

structure GrowthBoundednessEvidence (P : GrowthBoundednessPackage) where
  comparisonPrincipleClosed : P.comparisonPrinciple
  growthConditionClosed : P.growthCondition
  boundednessEstimateClosed : P.boundednessEstimate

def GrowthBoundednessClosed (P : GrowthBoundednessPackage) : Prop :=
  P.comparisonPrinciple ∧ P.growthCondition ∧ P.boundednessEstimate

theorem growth_boundedness_closed_from_evidence
    (P : GrowthBoundednessPackage) (E : GrowthBoundednessEvidence P) :
    GrowthBoundednessClosed P := by
  exact And.intro E.comparisonPrincipleClosed (And.intro E.growthConditionClosed E.boundednessEstimateClosed)

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse