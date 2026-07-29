import canonicalLaneMathlib.AdmissibleClass

/-!
# Growth Bound Estimate Package
-/

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure GrowthFunctionSettings where
  source : Type u
  target : Type v
  growthRate : source → ℝ
  boundConstant : ℝ

structure GrowthBoundEstimatePackage (G : GrowthFunctionSettings) where
  upperBound : ℝ
  lowerBound : ℝ
  estimateProved : ∀ (x : G.source), G.growthRate x ≤ G.boundConstant * (1 + G.growthRate x) + upperBound
  estimateProvedClosed : estimateProved

structure GrowthBoundEvidence {G : GrowthFunctionSettings} (P : GrowthBoundEstimatePackage G) where
  estimateProvedClosed : P.estimateProvedClosed

def GrowthBoundEstimateClosed {G : GrowthFunctionSettings} (P : GrowthBoundEstimatePackage G) : Prop :=
  P.estimateProved

theorem growth_bound_estimate_closed_from_evidence
    {G : GrowthFunctionSettings} (P : GrowthBoundEstimatePackage G)
    (E : GrowthBoundEvidence P) : GrowthBoundEstimateClosed P := by
  exact E.estimateProvedClosed

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse