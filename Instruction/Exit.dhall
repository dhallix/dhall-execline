let Exit
    : ../ExitCode.dhall → ../Instruction.dhall
    =   λ(exit-code : ../ExitCode.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin ((../Builtin.dhall Instruction).Exit { exit-code = exit-code })

in  Exit
