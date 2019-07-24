import XCTest
@testable import LeveledCustomStringConvertible

class LeveledCustomStringConvertibleTests: XCTestCase {
    public struct Person: LeveledCustomStringConvertible, LeveledCustomDebugStringConvertible {
        let name: String
        let age: Int
        
        public func leveledDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
            let tabs: String = String(repeating: indent, count: level)
            var rtn: String = ""
            if indentOpening { rtn += tabs }
            rtn += "{\n"
            rtn += tabs + indent + "name: \"\(self.name)\",\n"
            rtn += tabs + indent + "age: \(age)\n"
            rtn += tabs + "}"
            return  rtn
        }
        public func leveledDebugDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
            // Can have different output for debug string, but just being lazy
            return leveledDescription(level, indent: indent, indentOpening: indentOpening, sortKeys: sortKeys)
        }
    }

    func testDictionary() {
        var dictionary: [String: Any] = [:]
        dictionary["Object 1"] = 1
        dictionary["Object 2"] = true
        dictionary["Object 3"] = 3.0
        dictionary["Object 4"] = Person(name: "Person Name", age: 29)
        dictionary["Object 5"] = "This is a string"
        dictionary["Object 6"] = Character("C")

        print("Description: ")
        print(dictionary.leveledDescription(sortKeys: true))
        print("Debug Description: ")
        let debugDescription = dictionary.leveledDebugDescription(indent: "    ", sortKeys: true)
        print(debugDescription)
        let expectedDebugDescription = """
[
    "Object 1": 1,
    "Object 2": true,
    "Object 3": 3.0,
    "Object 4": {
        name: "Person Name",
        age: 29
    },
    "Object 5": "This is a string",
    "Object 6": "C"
]
"""
        XCTAssert(debugDescription == expectedDebugDescription, "Description does not match expected")
    }
    
    
    func testArray() {
        var array: [Any] = []
        array.append(1)
        array.append(true)
        array.append(3.0)
        array.append(Person(name: "Person Name", age: 29))
        array.append("This is a string")
        array.append(Character("C"))
        
        print("Description: ")
        print(array.leveledDescription())
        print("Debug Description: ")
        let debugDescription = array.leveledDebugDescription(indent: "    ")
        print(debugDescription)
        let expectedDebugDescription = """
[
    1,
    true,
    3.0,
    {
        name: "Person Name",
        age: 29
    },
    "This is a string",
    "C"
]
"""
        XCTAssert(debugDescription == expectedDebugDescription, "Description does not match expected")
    }


    static var allTests = [
        ("testDictionary", testDictionary),
    ]
}
