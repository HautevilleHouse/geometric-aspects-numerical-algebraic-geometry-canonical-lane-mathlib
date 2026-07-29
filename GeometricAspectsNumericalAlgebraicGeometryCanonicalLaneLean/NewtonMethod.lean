import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.NumericalAlgebraicAdmittedObject

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure NewtonMethod (O : NumericalAlgebraicAdmittedObject) where
  initialGuess : O.zeroSet
  jacobian : Prop
  iterationCount : Nat
  convergence : Prop
  evidence : convergence

theorem newton_convergence_closed (O : NumericalAlgebraicAdmittedObject) (N : NewtonMethod O) : N.convergence := N.evidence

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse