let Exec
	: Text → List Text → ../Instruction.dhall
	=   λ(cmd : Text)
	  → λ(argv : List Text)
	  → λ(Instruction : Type)
	  → λ(External : Text → List Text → Instruction)
	  → λ(_ : ../Builtin.dhall Instruction → Instruction)
	  → External cmd argv

in  Exec
