let OK
	: ../Instruction.dhall
	=   λ(Instruction : Type)
	  → λ(_ : Text → List Text → Instruction)
	  → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
	  → Builtin (../Builtin.dhall Instruction).OK

in  OK
