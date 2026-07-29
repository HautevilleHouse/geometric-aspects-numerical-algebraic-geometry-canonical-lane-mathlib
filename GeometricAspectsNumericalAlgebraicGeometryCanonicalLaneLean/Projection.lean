import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geometricProjection : Projection GeometricEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geometric_projection_idempotent (x : GeometricEndgameState) :
    geometricProjection.toFun (geometricProjection.toFun x) = geometricProjection.toFun x := by
  exact geometricProjection.idempotent x

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse