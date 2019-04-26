let Unexport
    : Text → ../Instruction.dhall → ../Instruction.dhall
    =   λ(var : Text)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).Unexport
          { var = var, next = next Instruction Builtin }
        )

in  Unexport
