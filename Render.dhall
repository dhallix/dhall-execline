let Prelude/Text/concatSep =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/Text/concatSep

let Next : Type = { next : Text }

let render/Builtin
    : ./Builtin.dhall Text → Text
    =   λ(builtin : ./Builtin.dhall Text)
      → merge
        { CD =
              λ(args : ./Builtin/Args/CD.dhall ⩓ Next)
            → "cd ${args.dir} ${args.next}"
        , Export =
              λ(args : ./Builtin/Args/Export.dhall ⩓ Next)
            → "export ${args.key} \"${args.value}\" ${args.next}"
        , Unexport =
              λ(args : ./Builtin/Args/Unexport.dhall ⩓ Next)
            → "unexport ${args.var} ${args.next}"
        , FdClose =
              λ(args : ./Builtin/Args/FdClose.dhall ⩓ Next)
            → "fdclose ${Natural/show args.fd} ${args.next}"
        , FdBlock =
              λ(args : ./Builtin/Args/FdBlock.dhall ⩓ Next)
            → "fdblock ${      if args.blocking

                         then  ""

                         else  "-n"} ${Natural/show args.fd} ${args.next}"
        , FdMove =
              λ(args : ./Builtin/Args/FdMove.dhall ⩓ Next)
            → "fdmove ${      if args.duplicate

                        then  "-c"

                        else  ""} ${Natural/show
                                    args.fd-from} ${Natural/show
                                                    args.fd-to} ${args.next}"
        , FdSwap =
              λ(args : ./Builtin/Args/FdSwap.dhall ⩓ Next)
            → "fdswap ${Natural/show args.fd1} ${Natural/show
                                                 args.fd2} ${args.next}"
        , FdReserve =
              λ(args : ./Builtin/Args/FdReserve.dhall ⩓ Next)
            → "fdreserve ${Natural/show args.n} ${args.next}"
        , Foreground =
              λ(args : ./Builtin/Args/Foreground.dhall Text ⩓ Next)
            → "foreground { ${args.fg} } ${args.next}"
        , Umask =
              λ(args : ./Builtin/Args/Umask.dhall ⩓ Next)
            → "umask ${args.mask} ${args.next}"
        , Exec =
              λ(args : ./Builtin/Args/Exec.dhall)
            → "exec ${Prelude/Text/concatSep " " ([ args.cmd ] # args.argv)}"
        , Exit =
              λ(args : ./Builtin/Args/Exit.dhall)
            → "exit ${./ExitCode/Render.dhall args.exit-code}"
        }
        builtin

let render
    : ./Instruction.dhall → Text
    = λ(instruction : ./Instruction.dhall) → instruction Text render/Builtin

in  render
