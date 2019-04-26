let Args = ../Builtin/Args/FdMove.dhall

let FdMove
    : Args → ../Instruction.dhall → ../Instruction.dhall
    =   λ(args : Args)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).FdMove
          (args ⫽ { next = next Instruction Builtin })
        )

in  FdMove
