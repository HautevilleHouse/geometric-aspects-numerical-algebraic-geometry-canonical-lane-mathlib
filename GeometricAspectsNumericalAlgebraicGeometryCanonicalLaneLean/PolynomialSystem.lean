import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure PolynomialSystemPackage where
  variables : Type
  equations : List (Type → Type)
  startSystem : SystemType
  targetSystem : SystemType
  startSolutions : List Type
  targetSolutions : List Type
  isSquare : Prop
  genericallyZeroDimensional : Prop
  isSquareTerm : isSquare

def PolynomialSystemClosed (P : PolynomialSystemPackage) : Prop :=
  P.isSquare ∧ P.genericallyZeroDimensional

theorem polynomial_system_closed_from_evidence (P : PolynomialSystemPackage) (E : PolynomialSystemClosed P) : PolynomialSystemClosed P := E

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse