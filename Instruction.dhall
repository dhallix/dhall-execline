  ∀(Instruction : Type)
→ ∀(External : Text → List Text → Instruction)
→ ∀(Builtin : ./Builtin.dhall Instruction → Instruction)
→ Instruction
