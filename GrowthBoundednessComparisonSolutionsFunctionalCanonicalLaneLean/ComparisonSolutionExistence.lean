import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure ComparisonSolutionExistence where
  initialCondition : ℝ
  growthBoundary : GrowthBoundaryFunctional
  solutionExists : Prop
  uniqueness : Prop
  comparisonPrinciple : Prop
  solutionExistsClosed : solutionExists
  uniquenessClosed : uniqueness
  comparisonPrincipleClosed : comparisonPrinciple

structure ComparisonSolutionExistenceEvidence (C : ComparisonSolutionExistence) where
  solutionExistsClosedEvidence : C.solutionExistsClosed
  uniquenessClosedEvidence : C.uniquenessClosed
  comparisonPrincipleClosedEvidence : C.comparisonPrincipleClosed

def ComparisonSolutionExistenceClosed (C : ComparisonSolutionExistence) : Prop :=
  C.solutionExistsClosed ∧ C.uniquenessClosed ∧ C.comparisonPrincipleClosed

theorem comparison_solution_existence_closed_from_evidence (C : ComparisonSolutionExistence) (E : ComparisonSolutionExistenceEvidence C) :
    ComparisonSolutionExistenceClosed C := by
  exact And.intro E.solutionExistsClosedEvidence
    (And.intro E.uniquenessClosedEvidence E.comparisonPrincipleClosedEvidence)

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse