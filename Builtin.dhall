  λ(Instruction : Type)
→ < CD :
      ./Builtin/Args/CD.dhall ⩓ { next : Instruction }
  | Export :
      ./Builtin/Args/Export.dhall ⩓ { next : Instruction }
  | Unexport :
      ./Builtin/Args/Unexport.dhall ⩓ { next : Instruction }
  | FdClose :
      ./Builtin/Args/FdClose.dhall ⩓ { next : Instruction }
  | FdBlock :
      ./Builtin/Args/FdBlock.dhall ⩓ { next : Instruction }
  | FdMove :
      ./Builtin/Args/FdMove.dhall ⩓ { next : Instruction }
  | FdSwap :
      ./Builtin/Args/FdSwap.dhall ⩓ { next : Instruction }
  | FdReserve :
      ./Builtin/Args/FdReserve.dhall ⩓ { next : Instruction }
  | Foreground :
      ./Builtin/Args/Foreground.dhall Instruction ⩓ { next : Instruction }
  | Umask :
      ./Builtin/Args/Umask.dhall ⩓ { next : Instruction }
  | Exec :
      ./Builtin/Args/Exec.dhall
  | Exit :
      ./Builtin/Args/Exit.dhall
  >
