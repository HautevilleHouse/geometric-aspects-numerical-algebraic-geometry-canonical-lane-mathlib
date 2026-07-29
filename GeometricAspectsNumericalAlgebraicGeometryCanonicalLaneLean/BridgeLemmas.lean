import canonicalLaneMathlib.BridgeLemmas
import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NumericalAlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse