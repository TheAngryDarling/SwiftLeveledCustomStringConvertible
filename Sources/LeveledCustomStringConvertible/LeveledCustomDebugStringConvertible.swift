//
//  LeveledCustomDebugStringConvertible.swift
//  LeveledCustomStringConvertible
//
//  Created by Tyler Anger on 2019-07-23.
//

import Foundation

public protocol LeveledCustomDebugStringConvertible: CustomDebugStringConvertible {
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indent: The representation of one indent
    ///   - indentOpening: Indicator if the first line should be indented
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String
}

fileprivate struct Defaults {
    static let level: Int = 0
    static let indent: String = "\t"
    static let indentOpening: Bool = false
    static let sortKeys: Bool = false
}

public extension LeveledCustomDebugStringConvertible {
    
    var debugDescription: String {
        return leveledDebugDescription()
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription() -> String {
        return leveledDebugDescription(Defaults.level,
                                     indent: Defaults.indent,
                                     indentOpening: Defaults.indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(_ level: Int) -> String {
        return leveledDebugDescription(level,
                                     indent: Defaults.indent,
                                     indentOpening: Defaults.indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indent: The representation of one indent
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(indent: String) -> String {
        return leveledDebugDescription(Defaults.level,
                                     indent: indent,
                                     indentOpening: Defaults.indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indentOpening: Indicator if the first line should be indented
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(indentOpening: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                     indent: Defaults.indent,
                                     indentOpening: indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indent: The representation of one indent
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(_ level: Int, indent: String) -> String {
        return leveledDebugDescription(level,
                                     indent: indent,
                                     indentOpening: Defaults.indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indentOpening: Indicator if the first line should be indented
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(_ level: Int, indentOpening: Bool) -> String {
        return leveledDebugDescription(level,
                                     indent: Defaults.indent,
                                     indentOpening: indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indent: The representation of one indent
    ///   - indentOpening: Indicator if the first line should be indented
    /// - Returns: A textual representation of this instance.
    func leveledDebugDescription(indent: String, indentOpening: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                     indent: indent,
                                     indentOpening: indentOpening,
                                     sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indent: The representation of one indent
    ///   - indentOpening: Indicator if the first line should be indented
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(_ level: Int, indent: String, indentOpening: Bool) -> String {
        return leveledDebugDescription(level,
                                  indent: indent,
                                  indentOpening: indentOpening,
                                  sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(sortKeys: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                  indent: Defaults.indent,
                                  indentOpening: Defaults.indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(_ level: Int, sortKeys: Bool) -> String {
        return leveledDebugDescription(level,
                                  indent: Defaults.indent,
                                  indentOpening: Defaults.indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indent: The representation of one indent
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(indent: String, sortKeys: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                  indent: indent,
                                  indentOpening: Defaults.indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indentOpening: Indicator if the first line should be indented
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                  indent: Defaults.indent,
                                  indentOpening: indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indent: The representation of one indent
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(_ level: Int, indent: String, sortKeys: Bool) -> String {
        return leveledDebugDescription(level,
                                  indent: indent,
                                  indentOpening: Defaults.indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    ///   - indentOpening: Indicator if the first line should be indented
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(_ level: Int, indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDebugDescription(level,
                                  indent: Defaults.indent,
                                  indentOpening: indentOpening,
                                  sortKeys: sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indent: The representation of one indent
    ///   - indentOpening: Indicator if the first line should be indented
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDebugDescription(indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDebugDescription(Defaults.level,
                                  indent: indent,
                                  indentOpening: indentOpening,
                                  sortKeys: sortKeys)
    }
    
}
