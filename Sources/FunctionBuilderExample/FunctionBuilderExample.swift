@_functionBuilder
public struct FooBuilder {
    public static func buildBlock(_ strings: String...) -> String {
        strings
            .filter { !$0.isEmpty }
            .joined(separator: "\n")
    }

    public static func buildIf(_ string: String?) -> String {
        string ?? ""
    }

    public static func buildDo(_ string: String) -> String {
        string
    }

    public static func buildEither(first string: String) -> String {
        string
    }

    public static func buildEither(second string: String) -> String {
        string
    }
}

public func join(@FooBuilder builder: () -> String) -> String {
    builder()
}
