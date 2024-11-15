@freestanding(expression)
public macro write(_ output: String) -> Void = #externalMacro(module: "StudentCodeMacrosMacros", type: "WriteMacro")

@freestanding(expression)
public macro read(_ prompt: String) -> String = #externalMacro(module: "StudentCodeMacrosMacros", type: "ReadMacro")
