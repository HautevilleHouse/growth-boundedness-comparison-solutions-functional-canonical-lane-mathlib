import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.FunctionalAnalyticFramework

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure EndpointExistencePackage {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} {C : ComparisonSolutionsPackage P}
    {F : FunctionalAnalyticFramework C} (E : EndpointClass) where
  minimizerExists : Prop
  minimizerRegularity : Prop
  criticalPointCondition : Prop
  comparisonAtEndpoint : Prop

structure EndpointExistenceEvidence {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} {C : ComparisonSolutionsPackage P}
    {F : FunctionalAnalyticFramework C} {Epkg : EndpointExistencePackage E}
    (Epkg2 : EndpointExistencePackage Epkg) where
  minimizerExistsClosed : Epkg2.minimizerExists
  minimizerRegularityClosed : Epkg2.minimizerRegularity
  criticalPointConditionClosed : Epkg2.criticalPointCondition
  comparisonAtEndpointClosed : Epkg2.comparisonAtEndpoint

def EndpointExistenceClosed {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} {C : ComparisonSolutionsPackage P}
    {F : FunctionalAnalyticFramework C} {Epkg : EndpointExistencePackage E}
    (Epkg2 : EndpointExistencePackage Epkg) : Prop :=
  Epkg2.minimizerExists ∧ Epkg2.minimizerRegularity ∧ Epkg2.criticalPointCondition ∧ Epkg2.comparisonAtEndpoint

theorem endpoint_existence_closed_from_evidence
    {G : GrowthBoundednessPackage} {P : G.ComparisonPrinciple}
    {C : ComparisonSolutionsPackage P} {F : FunctionalAnalyticFramework C}
    {Epkg : EndpointExistencePackage E} (Epkg2 : EndpointExistencePackage Epkg)
    (E : EndpointExistenceEvidence Epkg2) : EndpointExistenceClosed Epkg2 := by
  exact And.intro E.minimizerExistsClosed (And.intro E.minimizerRegularityClosed (And.intro E.criticalPointConditionClosed E.comparisonAtEndpointClosed))

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse