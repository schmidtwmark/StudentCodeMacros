import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct WriteMacro: ExpressionMacro {
    public static func expansion(
    of node: some FreestandingMacroExpansionSyntax,
    in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let argument = node.arguments.first?.expression else {
            fatalError("compiler bug: the macro does not have any arguments")
        }
        
        return "try await console.write(\(argument))"
    }
}

public struct ReadMacro: ExpressionMacro {
    public static func expansion(
    of node: some FreestandingMacroExpansionSyntax,
    in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let argument = node.arguments.first?.expression else {
            fatalError("compiler bug: the macro does not have any arguments")
        }
        
        return "try await console.read(\(argument))"
    }
}

@main
struct StudentCodeMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        WriteMacro.self,
        ReadMacro.self
    ]
}
