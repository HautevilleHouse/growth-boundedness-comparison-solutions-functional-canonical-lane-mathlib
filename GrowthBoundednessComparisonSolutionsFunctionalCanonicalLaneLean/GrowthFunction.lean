import GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.ComparisonSpace

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure GrowthFunction where
  domain : Type u
  codomain : Type v
  growthRate : domain → ℝ
  boundednessCondition : Prop
  comparisonInequality : Prop
  growthRateNonnegative : growthRate x ≥ 0

structure GrowthFunctionEvidence (G : GrowthFunction) where
  boundednessConditionClosed : G.boundednessCondition
  comparisonInequalityClosed : G.comparisonInequality
  growthRateNonnegativeClosed : G.growthRateNonnegative

def GrowthBoundednessClosed (G : GrowthFunction) : Prop :=
  G.boundednessCondition ∧ G.comparisonInequality ∧ G.growthRateNonnegative

theorem growth_boundedness_closed_from_evidence (G : GrowthFunction) (E : GrowthFunctionEvidence G) :
    GrowthBoundednessClosed G := by
  exact And.intro E.boundednessConditionClosed (And.intro E.comparisonInequalityClosed E.growthRateNonnegativeClosed)

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse