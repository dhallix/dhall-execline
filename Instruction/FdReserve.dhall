let Args = ../Builtin/Args/FdReserve.dhall

let FdReserve
    : Args → ../Instruction.dhall → ../Instruction.dhall
    =   λ(args : Args)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).FdReserve
          (args ⫽ { next = next Instruction Builtin })
        )

in  FdReserve
