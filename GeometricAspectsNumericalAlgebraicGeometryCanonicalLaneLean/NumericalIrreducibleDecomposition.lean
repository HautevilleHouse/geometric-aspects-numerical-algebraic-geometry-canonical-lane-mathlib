import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure NumericalIrreducibleDecomposition where
  solutionSet : Type u
  irreducibleComponents : Type v
  witnessSetConstruction : Prop
  membershipTest : Prop
  componentDimension : Prop
  witnessSetConstructionTerm : witnessSetConstruction
  membershipTestTerm : membershipTest
  componentDimensionTerm : componentDimension

structure IrreducibleDecompositionEvidence (D : NumericalIrreducibleDecomposition) where
  witnessSetConstructionClosed : D.witnessSetConstruction
  membershipTestClosed : D.membershipTest
  componentDimensionClosed : D.componentDimension

def IrreducibleDecompositionClosed (D : NumericalIrreducibleDecomposition) : Prop :=
  D.witnessSetConstruction ∧ D.membershipTest ∧ D.componentDimension

theorem irreducible_decomposition_closed_from_evidence (D : NumericalIrreducibleDecomposition) (E : IrreducibleDecompositionEvidence D) : IrreducibleDecompositionClosed D := by
  exact And.intro E.witnessSetConstructionClosed (And.intro E.membershipTestClosed E.componentDimensionClosed)

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse