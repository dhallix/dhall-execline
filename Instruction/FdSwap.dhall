let Args = ../Builtin/Args/FdSwap.dhall

let FdSwap
    : Args → ../Instruction.dhall → ../Instruction.dhall
    =   λ(args : Args)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).FdSwap
          (args ⫽ { next = next Instruction Builtin })
        )

in  FdSwap
