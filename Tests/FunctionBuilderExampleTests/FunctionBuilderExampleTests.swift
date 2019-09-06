import XCTest
import FunctionBuilderExample

final class FunctionBuilderExampleTests: XCTestCase {
    func testSingleLines() {
        let result = join {
            "foo"
        }
        XCTAssertEqual(result, "foo")
    }

    func testMultipleLines() {
        let result = join {
            "foo"
            "bar"
        }
        XCTAssertEqual(result, "foo\nbar")
    }

    func testIf() {
        let condition = true

        let result = join {
            "foo"
            "bar"
            if condition {
                "hoge"
                "fuga"
            }
        }

        XCTAssertEqual(result, "foo\nbar\nhoge\nfuga")
    }

    func testIfElse() {
        let condition = true

        let result = join {
            "foo"
            "bar"
            if condition {
                "hoge"
                "fuga"
            } else {
                "hogehoge"
                "fugafuga"
            }
        }

        XCTAssertEqual(result, "foo\nbar\nhoge\nfuga")
    }

    func testDo() {
        let result = join {
            "foo"
            "bar"
            do {
                "hoge"
                "fuga"
            }
        }

        XCTAssertEqual(result, "foo\nbar\nhoge\nfuga")
    }
}
