import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

def ConstrainedNumAlgGeomClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_num_alg_geom_endgame (A : AdmissibleClass) :
    ConstrainedNumAlgGeomClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse