import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.NumericalAlgebraicAdmittedObject

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure HomotopyContinuation (O : NumericalAlgebraicAdmittedObject) where
  targetSolutions : List O.zeroSet
  startSystem : Prop
  pathTracking : Prop
  endpointReached : Prop
  evidence : endpointReached

theorem homotopy_continuation_closed (O : NumericalAlgebraicAdmittedObject) (H : HomotopyContinuation O) : H.endpointReached := H.evidence

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse