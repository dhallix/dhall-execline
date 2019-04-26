let Args = ../Builtin/Args/FdBlock.dhall

let FdBlock
    : Args → ../Instruction.dhall → ../Instruction.dhall
    =   λ(args : Args)
      → λ(next : ../Instruction.dhall)
      → λ(Instruction : Type)
      → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
      → Builtin
        ( (../Builtin.dhall Instruction).FdBlock
          (args ⫽ { next = next Instruction Builtin })
        )

in  FdBlock
