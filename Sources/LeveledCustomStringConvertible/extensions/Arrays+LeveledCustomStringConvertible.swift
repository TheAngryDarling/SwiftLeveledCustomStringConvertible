//
//  Arrays+LeveledCustomStringConvertible.swift
//  LeveledCustomStringConvertible
//
//  Created by Tyler Anger on 2019-07-23.
//

import Foundation


private protocol ArrayLeveledDescriptions: Collection, LeveledCustomStringConvertible, LeveledCustomDebugStringConvertible { }

extension ArrayLeveledDescriptions {
    public func leveledDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        let tabs: String = String(repeating: indent, count: level)
        var rtn: String = ""
        if indentOpening { rtn += tabs }
        rtn += "["
        if self.count > 0 {
            rtn += "\n"
            
            for (index, v) in self.enumerated() {
                if let leveled = v as? LeveledCustomStringConvertible {
                    rtn += tabs + indent + leveled.leveledDescription(level + 1,
                                                                     indent: indent,
                                                                     indentOpening: false,
                                                                     sortKeys: sortKeys)
                } else if let str = v as? String {
                    rtn += tabs + indent + "\"\(str)\""
                } else if let char = v as? Character {
                    rtn += tabs + indent + "\"\(char)\""
                } else {
                    rtn += tabs + indent + "\(v)"
                }
                if index < (self.count - 1) { rtn += "," }
                rtn += "\n"
            }
            rtn += tabs
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
            
            for (index, v) in self.enumerated() {
                if let leveled = v as? LeveledCustomDebugStringConvertible {
                    rtn += tabs + indent + leveled.leveledDebugDescription(level + 1,
                                                                         indent: indent,
                                                                         indentOpening: false,
                                                                         sortKeys: sortKeys)
                /*} else if let str = v as? String {
                    rtn += tabs + indent + "\"\(str.debugDescription)\""
                } else if let char = v as? Character {
                    rtn += tabs + indent + "'\(char.debugDescription)'"*/
                } else {
                    rtn += tabs + indent + String(reflecting: v)
                }
                if index < (self.count - 1) { rtn += "," }
                rtn += "\n"
            }
            rtn += tabs
        }
        rtn += "]"
        return  rtn
    }
}


extension Array: ArrayLeveledDescriptions { }

#if swift(>=4.1)
    #if canImport(SwiftClassCollection)
        import SwiftClassCollection
        extension SCArray: ArrayLeveledDescriptions { }
    #endif
#endif
