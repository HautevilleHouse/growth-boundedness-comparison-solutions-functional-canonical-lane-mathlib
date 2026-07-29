import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.ComparisonSolutions

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure FunctionalAnalyticFramework {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} (C : ComparisonSolutionsPackage P) where
  dualSpace : Type u
  convexityProperties : Prop
  lowerSemicontinuity : Prop
  compactnessArgument : Prop

structure FunctionalAnalyticEvidence {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} {C : ComparisonSolutionsPackage P}
    (F : FunctionalAnalyticFramework C) where
  convexityPropertiesClosed : F.convexityProperties
  lowerSemicontinuityClosed : F.lowerSemicontinuity
  compactnessArgumentClosed : F.compactnessArgument

def FunctionalAnalyticClosed {G : GrowthBoundednessPackage}
    {P : G.ComparisonPrinciple} {C : ComparisonSolutionsPackage P}
    (F : FunctionalAnalyticFramework C) : Prop :=
  F.convexityProperties ∧ F.lowerSemicontinuity ∧ F.compactnessArgument

theorem functional_analytic_closed_from_evidence
    {G : GrowthBoundednessPackage} {P : G.ComparisonPrinciple}
    {C : ComparisonSolutionsPackage P} (F : FunctionalAnalyticFramework C)
    (E : FunctionalAnalyticEvidence F) : FunctionalAnalyticClosed F := by
  exact And.intro E.convexityPropertiesClosed (And.intro E.lowerSemicontinuityClosed E.compactnessArgumentClosed)

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse