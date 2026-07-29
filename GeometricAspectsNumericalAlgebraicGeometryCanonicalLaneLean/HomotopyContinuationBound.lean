import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometry

structure HomotopyContinuationBound where
  pathTracking : Type u
  startSystem : Type v
  targetSystem : Type w
  pathRegularity : Prop
  endpointReachability : Prop
  stepSizeControl : Prop
  pathRegularityTerm : pathRegularity
  endpointReachabilityTerm : endpointReachability
  stepSizeControlTerm : stepSizeControl

structure HomotopyContinuationBoundEvidence (B : HomotopyContinuationBound) where
  pathRegularityClosed : B.pathRegularity
  endpointReachabilityClosed : B.endpointReachability
  stepSizeControlClosed : B.stepSizeControl

def HomotopyContinuationBoundClosed (B : HomotopyContinuationBound) : Prop :=
  B.pathRegularity ∧ B.endpointReachability ∧ B.stepSizeControl

theorem homotopy_continuation_bound_closed_from_evidence (B : HomotopyContinuationBound) (E : HomotopyContinuationBoundEvidence B) : HomotopyContinuationBoundClosed B := by
  exact And.intro E.pathRegularityClosed (And.intro E.endpointReachabilityClosed E.stepSizeControlClosed)

end GeometricAspectsNumericalAlgebraicGeometry
end HautevilleHouse