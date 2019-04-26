let Exec
    : Text → List Text → ../Instruction.dhall
    =   λ(cmd : Text)
      → λ(argv : List Text)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin ((../Builtin.dhall Instruction).Exec { cmd = cmd, argv = argv })

in  Exec
