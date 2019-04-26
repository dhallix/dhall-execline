let Export
    : Text → Text → ../Instruction.dhall → ../Instruction.dhall
    =   λ(key : Text)
      → λ(value : Text)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).Export
          { key = key, value = value, next = next Instruction Builtin }
        )

in  Export
