public struct StringList {
    let strings: [String]
}

extension StringList: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.strings = [value]
    }
}

@_functionBuilder
public struct StringListBuilder {
    public static func buildBlock(_ strings: StringList...) -> StringList {
        StringList(strings: strings.flatMap { $0.strings })
    }

    public static func buildBlock(_ numbers: Int...) -> StringList {
        StringList(strings: numbers.map { String($0) })
    }
}

extension StringListBuilder {
    public static func buildIf(_ strings: StringList?) -> StringList {
        strings ?? StringList(strings: [])
    }
}

extension StringListBuilder {
    public static func buildDo(_ strings: StringList) -> StringList {
        strings
    }
}

extension StringListBuilder {
    public static func buildEither(first strings: StringList) -> StringList {
        strings
    }
}

extension StringListBuilder {
    public static func buildEither(second strings: StringList) -> StringList {
        strings
    }
}

public func join(@StringListBuilder builder: () -> StringList) -> String {
    builder().strings.joined(separator: "\n")
}
