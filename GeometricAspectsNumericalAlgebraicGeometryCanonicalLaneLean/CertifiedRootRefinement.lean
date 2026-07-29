import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure CertifiedRootRefinementPackage where
  isolatedSolution : Type u
  deflationOperator : Type v
  errorBound : Prop
  smaleAlphaTheorem : Prop

structure CertifiedRootRefinementEvidence (R : CertifiedRootRefinementPackage) where
  errorBoundClosed : R.errorBound
  smaleAlphaTheoremClosed : R.smaleAlphaTheorem

def CertifiedRootRefinementClosed (R : CertifiedRootRefinementPackage) : Prop :=
  R.errorBound ∧ R.smaleAlphaTheorem

theorem certified_root_refinement_closed_from_evidence (R : CertifiedRootRefinementPackage)
    (E : CertifiedRootRefinementEvidence R) : CertifiedRootRefinementClosed R := by
  exact And.intro E.errorBoundClosed E.smaleAlphaTheoremClosed

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse