//
//  Dictionary+LevledCustomStringConvertible.swift
//  LeveledCustomStringConvertible
//
//  Created by Tyler Anger on 2019-07-23.
//

import Foundation

private protocol DictionaryLeveledDescriptions: Collection, LeveledCustomStringConvertible, LeveledCustomDebugStringConvertible where Self.Element == (key: Key, value: Value), Key: Hashable
{
    associatedtype Key
    associatedtype Value

}

extension DictionaryLeveledDescriptions {
    public func leveledDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        let tabs: String = String(repeating: indent, count: level)
        var rtn: String = ""
        if indentOpening { rtn += tabs }
        rtn += "["
        if self.count > 0 {
            rtn += "\n"
            var items = Array<(key: Key, value: Value)>(self)
            if sortKeys {
                items.sort {
                    return String(describing: $0.key) < String(describing: $1.key)
                }
            }
            
            for (index, v) in items.enumerated() {
                rtn += tabs + indent
                if Key.self == String.self { rtn += "\"\(v.key)\"" }
                else { rtn += "\(v.key)" }
                rtn += ": "
                
                if let leveled = v.value as? LeveledCustomStringConvertible {
                    rtn += leveled.leveledDescription(level + 1,
                                                     indent: indent,
                                                     indentOpening: false,
                                                     sortKeys: sortKeys)
                } else if let str = v.value as? String {
                    rtn += "\"\(str)\""
                } else if let char = v.value as? Character {
                    rtn += "\"\(char)\""
                } else {
                    rtn += "\(v.value)"
                }
                if index < (self.count - 1) { rtn += "," }
                rtn += "\n"
            }
            rtn += tabs
        } else {
            rtn += ":"
        }
        rtn += "]"
        return rtn
    }
    
    public func leveledDebugDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        let tabs: String = String(repeating: indent, count: level)
        var rtn: String = ""
        if indentOpening { rtn += tabs }
        rtn += "["
        if self.count > 0 {
            rtn += "\n"
            
            var items = Array<(key: Key, value: Value)>(self)
            if sortKeys {
                items.sort {
                    return String(describing: $0.key) < String(describing: $1.key)
                }
            }
            
            for (index, v) in items.enumerated() {
                rtn += tabs + indent
                if Key.self == String.self { rtn += "\"\(v.key)\"" }
                else { rtn += "\(v.key)" }
                rtn += ": "
                
                if let leveled = v.value as? LeveledCustomDebugStringConvertible {
                    rtn += leveled.leveledDebugDescription(level + 1,
                                                         indent: indent,
                                                         indentOpening: false,
                                                         sortKeys: sortKeys)
                /*} else if let str = v.value as? String {
                    rtn += "\"\(str.debugDescription)\""
                } else if let char = v.value as? Character {
                    rtn += "'\(char.debugDescription)'"*/
                } else {
                    rtn += String(reflecting: v.value)
                }
                if index < (self.count - 1) { rtn += "," }
                rtn += "\n"
            }
            rtn += tabs
        } else {
            rtn += ":"
        }
        rtn += "]"
        return  rtn
    }
}

extension Dictionary: DictionaryLeveledDescriptions { }

#if swift(>=4.1)
    #if canImport(SwiftClassCollection)
        import SwiftClassCollection
        extension SCArrayOrderedDictionary: DictionaryLeveledDescriptions { }
        extension SCDictionary: DictionaryLeveledDescriptions { }
    #endif
#endif
