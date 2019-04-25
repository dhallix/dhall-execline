let Prelude/Text/concatSep =
	  https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/Text/concatSep

let render/External
	: Text → List Text → Text
	=   λ(cmd : Text)
	  → λ(args : List Text)
	  → Prelude/Text/concatSep " " ([ cmd ] # args)

let render/Builtin
	: ./Builtin.dhall Text → Text
	=   λ(builtin : ./Builtin.dhall Text)
	  → merge
		{ OK =
			""
		, CD =
			  λ(args : { dir : Text, next : Text })
			→ "cd ${args.dir} ${args.next}"
		, Export =
			  λ(args : { key : Text, value : Text, next : Text })
			→ "export ${args.key} ${args.value} ${args.next}"
		, Foreground =
			  λ(args : { fg : Text, next : Text })
			→ "foreground { ${args.fg} } ${args.next}"
		}
		builtin

let render
	: ./Instruction.dhall → Text
	=   λ(instruction : ./Instruction.dhall)
	  → instruction Text render/External render/Builtin

in  render
