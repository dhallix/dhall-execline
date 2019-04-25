let Sequence
	: List (./Instruction.dhall → ./Instruction.dhall) → ./Instruction.dhall
	=   λ(instructions : List (./Instruction.dhall → ./Instruction.dhall))
	  → List/fold
		(./Instruction.dhall → ./Instruction.dhall)
		instructions
		./Instruction.dhall
		(   λ(f : ./Instruction.dhall → ./Instruction.dhall)
		  → λ(x : ./Instruction.dhall)
		  → f x
		)
		./Instruction/OK.dhall

in  Sequence
