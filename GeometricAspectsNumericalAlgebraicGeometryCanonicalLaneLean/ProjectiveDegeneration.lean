import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.NumericalHomotopyContinuation

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure ProjectiveDegenerationPackage where
  projectiveFamily : Prop
  degenerationPath : Prop
  limitPointComputed : Prop
  multiplicityPreserved : Prop

structure ProjectiveDegenerationEvidence (P : ProjectiveDegenerationPackage) where
  projectiveFamilyClosed : P.projectiveFamily
  degenerationPathClosed : P.degenerationPath
  limitPointComputedClosed : P.limitPointComputed
  multiplicityPreservedClosed : P.multiplicityPreserved

def ProjectiveDegenerationClosed (P : ProjectiveDegenerationPackage) : Prop :=
  P.projectiveFamily ∧ P.degenerationPath ∧ P.limitPointComputed ∧ P.multiplicityPreserved

theorem projective_degeneration_closed_from_evidence
    (P : ProjectiveDegenerationPackage) (E : ProjectiveDegenerationEvidence P) :
    ProjectiveDegenerationClosed P := by
  exact And.intro E.projectiveFamilyClosed
    (And.intro E.degenerationPathClosed
      (And.intro E.limitPointComputedClosed E.multiplicityPreservedClosed))

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse