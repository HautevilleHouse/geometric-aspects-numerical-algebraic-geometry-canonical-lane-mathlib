import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.HomotopyContinuation
import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.NewtonMethod

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure CertifiedTracking (O : NumericalAlgebraicAdmittedObject) where
  homotopy : HomotopyContinuation O
  newton : NewtonMethod O
  certificate : Prop
  evidence : certificate

theorem certified_tracking_closed (O : NumericalAlgebraicAdmittedObject) (C : CertifiedTracking O) : C.certificate := C.evidence

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse