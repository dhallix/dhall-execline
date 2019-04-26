let Foreground
    : ../Instruction.dhall → ../Instruction.dhall → ../Instruction.dhall
    =   λ(fg : ../Instruction.dhall)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).Foreground
          { fg = fg Instruction Builtin, next = next Instruction Builtin }
        )

in  Foreground
