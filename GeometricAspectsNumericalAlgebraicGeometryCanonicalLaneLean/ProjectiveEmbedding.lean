import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure ProjectiveEmbeddingPackage where
  variety : Type u
  ambientProjectiveSpace : Type v
  embeddingMap : Type w
  closed : Prop
  birational : Prop
  degreeOne : Prop

structure ProjectiveEmbeddingEvidence (P : ProjectiveEmbeddingPackage) where
  closedClosed : P.closed
  birationalClosed : P.birational
  degreeOneClosed : P.degreeOne

def ProjectiveEmbeddingClosed (P : ProjectiveEmbeddingPackage) : Prop :=
  P.closed ∧ P.birational ∧ P.degreeOne

theorem projective_embedding_closed_from_evidence (P : ProjectiveEmbeddingPackage)
    (E : ProjectiveEmbeddingEvidence P) : ProjectiveEmbeddingClosed P := by
  exact And.intro E.closedClosed (And.intro E.birationalClosed E.degreeOneClosed)

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse
