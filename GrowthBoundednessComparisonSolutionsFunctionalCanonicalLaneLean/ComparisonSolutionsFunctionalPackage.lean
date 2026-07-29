import canonicalLaneMathlib.AdmissibleClass

/-!
# Comparison Solutions Functional Package
-/

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure ComparisonSolutionSettings where
  domain : Type u
  solutionSpace : Type v
  functionalI : solutionSpace → ℝ
  growthBound : ℝ

structure ComparisonSolutionsFunctionalPackage (C : ComparisonSolutionSettings) where
  comparisonInequality : ∀ (u : C.solutionSpace), C.functionalI u ≤ C.growthBound
  comparisonInequalityClosed : comparisonInequality

structure ComparisonSolutionsEvidence {C : ComparisonSolutionSettings} (P : ComparisonSolutionsFunctionalPackage C) where
  comparisonInequalityClosed : P.comparisonInequalityClosed

def ComparisonSolutionsFunctionalClosed
    {C : ComparisonSolutionSettings} (P : ComparisonSolutionsFunctionalPackage C) : Prop :=
  P.comparisonInequality

theorem comparison_solutions_functional_closed_from_evidence
    {C : ComparisonSolutionSettings} (P : ComparisonSolutionsFunctionalPackage C)
    (E : ComparisonSolutionsEvidence P) : ComparisonSolutionsFunctionalClosed P := by
  exact E.comparisonInequalityClosed

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse