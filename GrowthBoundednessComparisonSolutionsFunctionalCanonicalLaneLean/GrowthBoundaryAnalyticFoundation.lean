import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctional

structure GrowthBoundaryAnalyticFoundation where
  functional : GrowthBoundaryFunctional
  functionalEvidence : GrowthBoundaryFunctionalEvidence functional
  existence : ComparisonSolutionExistence
  existenceEvidence : ComparisonSolutionExistenceEvidence existence
  endpoint : GrowthBoundaryEndpoint
  endpointEvidence : GrowthBoundaryEndpointEvidence endpoint

def GrowthBoundaryAnalyticFoundationClosed (A : GrowthBoundaryAnalyticFoundation) : Prop :=
  GrowthBoundaryFunctionalClosed A.functional ∧
  ComparisonSolutionExistenceClosed A.existence ∧
  GrowthBoundaryEndpointClosed A.endpoint

theorem growth_boundary_analytic_foundation_closed_from_evidence
    (A : GrowthBoundaryAnalyticFoundation) :
    GrowthBoundaryAnalyticFoundationClosed A := by
  exact And.intro (growth_boundary_functional_closed_from_evidence A.functional A.functionalEvidence)
    (And.intro (comparison_solution_existence_closed_from_evidence A.existence A.existenceEvidence)
      (growth_boundary_endpoint_closed_from_evidence A.endpoint A.endpointEvidence))

end GrowthBoundednessComparisonSolutionsFunctional
end HautevilleHouse