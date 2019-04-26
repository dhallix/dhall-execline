let Umask
    : Text → ../Instruction.dhall → ../Instruction.dhall
    =   λ(mask : Text)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).Umask
          { mask = mask, next = next Instruction Builtin }
        )

in  Umask
