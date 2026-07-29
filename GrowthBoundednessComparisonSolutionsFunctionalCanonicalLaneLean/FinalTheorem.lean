import canonicalLaneMathlib.AdmissibleClass
import GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.BridgeLemmas
import GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

def ConstrainedGrowthBoundednessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_growth_boundedness_endgame (A : AdmissibleClass) :
    ConstrainedGrowthBoundednessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse