import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure PolynomialSystemPackage where
  systemVariables : Nat
  polynomialEquations : Nat
  coefficientField : Type u
  solutionDimension : Prop
  approximateSolutionExists : Prop

structure PolynomialSystemEvidence (P : PolynomialSystemPackage) where
  solutionDimensionClosed : P.solutionDimension
  approximateSolutionExistsClosed : P.approximateSolutionExists

def PolynomialSystemClosed (P : PolynomialSystemPackage) : Prop :=
  P.solutionDimension ∧ P.approximateSolutionExists

theorem polynomial_system_closed_from_evidence (P : PolynomialSystemPackage)
    (E : PolynomialSystemEvidence P) : PolynomialSystemClosed P := by
  exact And.intro E.solutionDimensionClosed E.approximateSolutionExistsClosed

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse