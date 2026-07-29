import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure NewtonPolytopePackage where
  supportSet : Prop
  mixedVolume : Prop
  bernsteinBound : Prop
  rootCountUpper : Prop

structure NewtonPolytopeEvidence (N : NewtonPolytopePackage) where
  supportSetClosed : N.supportSet
  mixedVolumeClosed : N.mixedVolume
  bernsteinBoundClosed : N.bernsteinBound
  rootCountUpperClosed : N.rootCountUpper

def NewtonPolytopeClosed (N : NewtonPolytopePackage) : Prop :=
  N.supportSet ∧ N.mixedVolume ∧ N.bernsteinBound ∧ N.rootCountUpper

theorem newton_polytope_closed_from_evidence (N : NewtonPolytopePackage)
    (E : NewtonPolytopeEvidence N) : NewtonPolytopeClosed N := by
  exact And.intro E.supportSetClosed (And.intro E.mixedVolumeClosed
    (And.intro E.bernsteinBoundClosed E.rootCountUpperClosed))

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse
