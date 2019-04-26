let Args = ../Builtin/Args/FdClose.dhall

let FdClose
    : Args → ../Instruction.dhall → ../Instruction.dhall
    =   λ(args : Args)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).FdClose
          (args ⫽ { next = next Instruction Builtin })
        )

in  FdClose
