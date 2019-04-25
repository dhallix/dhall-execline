  λ(Instruction : Type)
→ < CD :
	  { dir : Text, next : Instruction }
  | OK
  | Export :
	  { key : Text, value : Text, next : Instruction }
  | Foreground :
	  { fg : Instruction, next : Instruction }
  >
