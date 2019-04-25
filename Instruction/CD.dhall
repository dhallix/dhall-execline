let CD
	: Text → ../Instruction.dhall → ../Instruction.dhall
	=   λ(dir : Text)
	  → λ(next : ../Instruction.dhall)
	  → λ(Instruction : Type)
	  → λ(External : Text → List Text → Instruction)
	  → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
	  → Builtin
		( (../Builtin.dhall Instruction).CD
		  { dir = dir, next = next Instruction External Builtin }
		)

in  CD
