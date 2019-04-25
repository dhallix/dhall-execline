let Foreground
	: ../Instruction.dhall → ../Instruction.dhall → ../Instruction.dhall
	=   λ(fg : ../Instruction.dhall)
	  → λ(next : ../Instruction.dhall)
	  → λ(Instruction : Type)
	  → λ(External : Text → List Text → Instruction)
	  → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
	  → Builtin
		( (../Builtin.dhall Instruction).Foreground
		  { fg =
			  fg Instruction External Builtin
		  , next =
			  next Instruction External Builtin
		  }
		)

in  Foreground
