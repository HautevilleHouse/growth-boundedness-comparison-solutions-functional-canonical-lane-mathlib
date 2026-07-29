import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure GrowthBoundednessComparisonSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GrowthBoundednessComparisonAdmittedObject where
  space : GrowthBoundednessComparisonSpace
  growthLowerBound : Prop
  growthUpperBound : Prop
  comparisonPrinciple : Prop
  solutionSpace : Type
  solutionTopology : TopologicalSpace solutionSpace
  solutionExists : Prop
  conclusion : solutionExists

def GrowthBoundednessComparisonWitnessClosed (O : GrowthBoundednessComparisonAdmittedObject) : Prop :=
  O.solutionExists

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse