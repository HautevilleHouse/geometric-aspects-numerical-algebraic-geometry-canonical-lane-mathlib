import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure NumericalAlgebraicAdmittedObject where
  variety : Type
  topology : TopologicalSpace variety
  zeroSet : Set variety
  algebraicClosed : Prop
  conclusion : algebraicClosed

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse