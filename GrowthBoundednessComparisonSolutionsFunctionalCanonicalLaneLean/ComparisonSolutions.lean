import HautevilleHouse.GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean

structure ComparisonSolutionsPackage {G : GrowthBoundednessPackage} (P : G.ComparisonPrinciple) where
  solutionSpace : Type u
  orderStructure : Prop
  subSolutionExistence : Prop
  superSolutionExistence : Prop
  comparisonInequality : Prop

structure ComparisonSolutionsEvidence {G : GrowthBoundednessPackage} {P : G.ComparisonPrinciple}
    (C : ComparisonSolutionsPackage P) where
  orderStructureClosed : C.orderStructure
  subSolutionExistenceClosed : C.subSolutionExistence
  superSolutionExistenceClosed : C.superSolutionExistence
  comparisonInequalityClosed : C.comparisonInequality

def ComparisonSolutionsClosed {G : GrowthBoundednessPackage} {P : G.ComparisonPrinciple}
    (C : ComparisonSolutionsPackage P) : Prop :=
  C.orderStructure ∧ C.subSolutionExistence ∧ C.superSolutionExistence ∧ C.comparisonInequality

theorem comparison_solutions_closed_from_evidence
    {G : GrowthBoundednessPackage} {P : G.ComparisonPrinciple}
    (C : ComparisonSolutionsPackage P) (E : ComparisonSolutionsEvidence C) :
    ComparisonSolutionsClosed C := by
  exact And.intro E.orderStructureClosed (And.intro E.subSolutionExistenceClosed (And.intro E.superSolutionExistenceClosed E.comparisonInequalityClosed))

end GrowthBoundednessComparisonSolutionsFunctionalCanonicalLaneLean
end HautevilleHouse