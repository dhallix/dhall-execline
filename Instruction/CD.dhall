let CD
    : Text → ../Instruction.dhall → ../Instruction.dhall
    =   λ(dir : Text)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).CD
          { dir = dir, next = next Instruction Builtin }
        )

in  CD
