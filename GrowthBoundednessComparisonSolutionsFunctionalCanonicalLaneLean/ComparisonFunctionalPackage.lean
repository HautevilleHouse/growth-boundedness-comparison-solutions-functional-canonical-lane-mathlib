import canonicalLaneMathlib.AdmissibleClass

/-!
# Comparison Functional Package
-/

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure FunctionalSettings where
  domain : Type u
  growthFunction : domain → ℝ
  solutionSpace : Type v
  functionalI : solutionSpace → ℝ

structure ComparisonInequalityPackage (S : FunctionalSettings) where
  growthBound : ℝ
  functionalBound : ℝ
  inequality : ∀ (u : S.solutionSpace), S.functionalI u ≤ S.growthFunction u + growthBound
  inequalityClosed : inequality

structure ComparisonInequalityEvidence {S : FunctionalSettings} (C : ComparisonInequalityPackage S) where
  inequalityClosed : C.inequalityClosed

def ComparisonInequalityClosed {S : FunctionalSettings} (C : ComparisonInequalityPackage S) : Prop :=
  C.inequality

theorem comparison_inequality_closed_from_evidence
    {S : FunctionalSettings} (C : ComparisonInequalityPackage S)
    (E : ComparisonInequalityEvidence C) : ComparisonInequalityClosed C := by
  exact E.inequalityClosed

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse