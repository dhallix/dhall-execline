{ Instruction =
    let process-state-control =
          { CD =
              ./Instruction/CD.dhall
          , Umask =
              ./Instruction/Umask.dhall
          , Export =
              ./Instruction/Export.dhall
          , Unexport =
              ./Instruction/Unexport.dhall
          , FdClose =
              ./Instruction/FdClose.dhall
          , FdBlock =
              ./Instruction/FdBlock.dhall
          , FdMove =
              ./Instruction/FdMove.dhall
          , FdSwap =
              ./Instruction/FdSwap.dhall
          , FdReserve =
              ./Instruction/FdReserve.dhall
          , Exit =
              ./Instruction/Exit.dhall
          , Exec =
              ./Instruction/Exec.dhall
          , Foreground =
              ./Instruction/Foreground.dhall
          }

    in  process-state-control
, render =
    ./Render.dhall
, sequence =
    ./Sequence.dhall
}
