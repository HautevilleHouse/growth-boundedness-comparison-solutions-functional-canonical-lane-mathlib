import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure ComparisonSpace where
  space : Type u
  topology : TopologicalSpace space
  metric : MetricSpace space
  orderRelation : space → space → Prop
  orderCompatibleWithTopology : Prop

def orderClosed (C : ComparisonSpace) : Prop :=
  C.orderCompatibleWithTopology

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse