import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure GrowthBoundaryFunctional where
  sourceBound : ℝ
  targetBound : ℝ
  comparisonRatio : ℝ
  growthExponent : ℝ
  functionalDefined : Prop
  sourceBoundClosed : sourceBound > 0
  targetBoundClosed : targetBound > 0
  comparisonRatioClosed : comparisonRatio ≥ 1
  growthExponentClosed : growthExponent > 0
  functionalDefinedClosed : functionalDefined

structure GrowthBoundaryFunctionalEvidence (F : GrowthBoundaryFunctional) where
  sourceBoundClosedEvidence : F.sourceBoundClosed
  targetBoundClosedEvidence : F.targetBoundClosed
  comparisonRatioClosedEvidence : F.comparisonRatioClosed
  growthExponentClosedEvidence : F.growthExponentClosed
  functionalDefinedClosedEvidence : F.functionalDefinedClosed

def GrowthBoundaryFunctionalClosed (F : GrowthBoundaryFunctional) : Prop :=
  F.sourceBoundClosed ∧ F.targetBoundClosed ∧ F.comparisonRatioClosed ∧ F.growthExponentClosed ∧ F.functionalDefinedClosed

theorem growth_boundary_functional_closed_from_evidence (F : GrowthBoundaryFunctional) (E : GrowthBoundaryFunctionalEvidence F) :
    GrowthBoundaryFunctionalClosed F := by
  exact And.intro E.sourceBoundClosedEvidence
    (And.intro E.targetBoundClosedEvidence
      (And.intro E.comparisonRatioClosedEvidence
        (And.intro E.growthExponentClosedEvidence E.functionalDefinedClosedEvidence)))

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse