import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeometricAdmittedObject where
  space : GeometricSpace
  polynomialSystem : Prop
  numericalHomotopyContinuation : Prop
  witnessType : Type
  witnessTopology : TopologicalSpace witnessType
  homotopyPathTracked : Prop
  conclusion : homotopyPathTracked

structure GeometricEndgameState where
  object : GeometricAdmittedObject

def GeometricWitnessClosed (O : GeometricAdmittedObject) : Prop :=
  O.homotopyPathTracked

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse