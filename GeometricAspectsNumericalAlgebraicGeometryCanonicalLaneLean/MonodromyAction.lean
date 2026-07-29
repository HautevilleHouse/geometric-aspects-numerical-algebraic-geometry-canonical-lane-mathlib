import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.ProjectiveDegeneration

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure MonodromyActionPackage where
  loopSpace : Type u
  monodromyRepresentation : Prop
  braidMonodromyComputed : Prop
  actionOnHomology : Prop
  numericalContinuationConsistent : Prop

structure MonodromyActionEvidence (M : MonodromyActionPackage) where
  monodromyRepresentationClosed : M.monodromyRepresentation
  braidMonodromyComputedClosed : M.braidMonodromyComputed
  actionOnHomologyClosed : M.actionOnHomology
  numericalContinuationConsistentClosed : M.numericalContinuationConsistent

def MonodromyActionClosed (M : MonodromyActionPackage) : Prop :=
  M.monodromyRepresentation ∧ M.braidMonodromyComputed ∧ M.actionOnHomology ∧ M.numericalContinuationConsistent

theorem monodromy_action_closed_from_evidence
    (M : MonodromyActionPackage) (E : MonodromyActionEvidence M) :
    MonodromyActionClosed M := by
  exact And.intro E.monodromyRepresentationClosed
    (And.intro E.braidMonodromyComputedClosed
      (And.intro E.actionOnHomologyClosed E.numericalContinuationConsistentClosed))

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse