let Export
	: { key : Text, value : Text } → ../Instruction.dhall → ../Instruction.dhall
	=   λ(kv : { key : Text, value : Text })
	  → λ(next : ../Instruction.dhall)
	  → λ(Instruction : Type)
	  → λ(External : Text → List Text → Instruction)
	  → λ(Builtin : ../Builtin.dhall Instruction → Instruction)
	  → Builtin
		( (../Builtin.dhall Instruction).Export
		  { key =
			  kv.key
		  , value =
			  kv.value
		  , next =
			  next Instruction External Builtin
		  }
		)

in  Export
