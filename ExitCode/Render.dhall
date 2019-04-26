  λ(exit-code : ../ExitCode.dhall)
→ merge
  { Success =
      "0"
  , PositiveFailure =
      Natural/show
  , NegativeFailure =
      λ(n : Natural) → "-${Natural/show n}"
  }
  exit-code
