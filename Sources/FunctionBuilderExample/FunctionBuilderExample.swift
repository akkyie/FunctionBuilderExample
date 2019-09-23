@_functionBuilder
public struct StringBuilder {
    public static func buildBlock(_ strings: String...) -> String {
        strings
            .joined(separator: "\n")
    }
}

extension StringBuilder {
    public static func buildBlock(_ numbers: Int...) -> String {
        numbers.map { String($0) }
            .joined(separator: "\n")
    }
}

extension StringBuilder {
    public static func buildIf(_ string: String?) -> String {
        string ?? ""
    }
}

extension StringBuilder {
    public static func buildDo(_ string: String) -> String {
        string
    }
}

extension StringBuilder {
    public static func buildEither(first string: String) -> String {
        string
    }
}

extension StringBuilder {
    public static func buildEither(second string: String) -> String {
        string
    }
}

public func join(@StringBuilder builder: () -> String) -> String {
    builder()
}
