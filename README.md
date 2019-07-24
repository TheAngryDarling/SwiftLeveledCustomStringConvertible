# Leveled Custom String Convertible
![swift >= 4.0](https://img.shields.io/badge/swift-%3E%3D4.0-brightgreen.svg)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![Linux](https://img.shields.io/badge/os-linux-green.svg?style=flat)
![Apache 2](https://img.shields.io/badge/license-Apache2-blue.svg?style=flat)

Helper protocols used to create strings out of object descriptions and debug descriptions
They work much like the way description and debugDescription work, but support for indenting child objects

## Usage

```swift

public struct Person: LeveledCustomStringConvertible, LeveledCustomDebugStringConvertible {
    let name: String
    let age: Int
    
    public func leveledDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        let tabs: String = String(repeating: indent, count: level)
        var rtn: String = ""
        if indentOpening { rtn += tabs }
        rtn += "{"
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

var dictionary: [String: Any] = [:]
dictionary["Object 1"] = 1
dictionary["Object 2"] = true
dictionary["Object 3"] = 3.0
dictionary["Object 4"] = Person(name: "Person Name", age: 29)
dictionary["Object 5"] = "This is a string"
dictionary["Object 6"] = Character("C")

print(dictionary.leveledDebugDescription())

/// Expected Output: (May not be in same order due to dictionary enumeration)
[
    "Object 5": "This is a string",
    "Object 4": {
        name: "Person Name",
        age: 29
    },
    "Object 3": 3.0,
    "Object 1": 1,
    "Object 6": "C",
    "Object 2": true
]

print(dictionary.leveledDebugDescription(sortKeys: true))

/// Expected Output: 
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


var array: [Any] = []
array.append(1)
array.append(true)
array.append(3.0)
array.append(Person(name: "Person Name", age: 29))
array.append("This is a string")
array.append(Character("C"))

print(array.leveledDescription())

/// Expected Output: 
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
```
## Author

* **Tyler Anger** - *Initial work* - [TheAngryDarling](https://github.com/TheAngryDarling)

## License

This project is licensed under Apache License v2.0 - see the [LICENSE.md](LICENSE.md) file for details
