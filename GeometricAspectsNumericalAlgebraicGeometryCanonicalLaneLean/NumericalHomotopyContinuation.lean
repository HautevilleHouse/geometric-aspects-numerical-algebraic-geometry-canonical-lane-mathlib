import GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean

structure NumericalHomotopyContinuationPackage where
  startSystem : Prop
  targetSystem : Prop
  homotopyPath : Prop
  pathTrackingClosed : Prop
  endGameCertified : Prop

structure NumericalHomotopyContinuationEvidence (P : NumericalHomotopyContinuationPackage) where
  startSystemClosed : P.startSystem
  targetSystemClosed : P.targetSystem
  homotopyPathClosed : P.homotopyPath
  pathTrackingClosed : P.pathTrackingClosed
  endGameCertifiedClosed : P.endGameCertified

def NumericalHomotopyContinuationClosed (P : NumericalHomotopyContinuationPackage) : Prop :=
  P.startSystem ∧ P.targetSystem ∧ P.homotopyPath ∧ P.pathTrackingClosed ∧ P.endGameCertified

theorem numerical_homotopy_continuation_closed_from_evidence
    (P : NumericalHomotopyContinuationPackage) (E : NumericalHomotopyContinuationEvidence P) :
    NumericalHomotopyContinuationClosed P := by
  exact And.intro E.startSystemClosed
    (And.intro E.targetSystemClosed
      (And.intro E.homotopyPathClosed
        (And.intro E.pathTrackingClosed E.endGameCertifiedClosed)))

end GeometricAspectsNumericalAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse