import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure MonodromyGroupAction where
  fiberParameterSpace : Type u
  baseParameterSpace : Type v
  monodromyRepresentation : Type w
  parameterHomotopyLifting : Prop
  groupActionDefined : Prop
  pathLiftingContinuity : Prop
  parameterHomotopyLiftingTerm : parameterHomotopyLifting
  groupActionDefinedTerm : groupActionDefined
  pathLiftingContinuityTerm : pathLiftingContinuity

structure MonodromyEvidence (M : MonodromyGroupAction) where
  parameterHomotopyLiftingClosed : M.parameterHomotopyLifting
  groupActionDefinedClosed : M.groupActionDefined
  pathLiftingContinuityClosed : M.pathLiftingContinuity

def MonodromyGroupActionClosed (M : MonodromyGroupAction) : Prop :=
  M.parameterHomotopyLifting ∧ M.groupActionDefined ∧ M.pathLiftingContinuity

theorem monodromy_group_action_closed_from_evidence (M : MonodromyGroupAction) (E : MonodromyEvidence M) : MonodromyGroupActionClosed M := by
  exact And.intro E.parameterHomotopyLiftingClosed (And.intro E.groupActionDefinedClosed E.pathLiftingContinuityClosed)

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse