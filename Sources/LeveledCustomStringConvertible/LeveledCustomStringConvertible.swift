//
//  LeveledCustomStringConvertible.swift
//  LeveledCustomStringConvertible
//
//  Created by Tyler Anger on 2019-07-23.
//

import Foundation

public protocol LeveledCustomStringConvertible: CustomStringConvertible {
  
   /// A textual representation of this instance. Indented to the proper level
   ///
   /// - Parameters:
   ///   - level: The number of levels deep this object is in
   ///   - indent: The representation of one indent
   ///   - indentOpening: Indicator if the first line should be indented
   ///   - sortKeys: Indicator if the keys should be sorted before converting
   /// - Returns: A textual representation of this instance. Indented to the proper level
   func leveledDescription(_ level: Int, indent: String, indentOpening: Bool, sortKeys: Bool) -> String
}

fileprivate struct Defaults {
    static let level: Int = 0
    static let indent: String = "\t"
    static let indentOpening: Bool = false
    static let sortKeys: Bool = false
}

public extension LeveledCustomStringConvertible {
    
    var description: String {
        return leveledDescription()
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Returns: A textual representation of this instance.
    func leveledDescription() -> String {
        return leveledDescription(Defaults.level,
                                 indent: Defaults.indent,
                                 indentOpening: Defaults.indentOpening,
                                 sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - level: The number of levels deep this object is in
    /// - Returns: A textual representation of this instance.
    func leveledDescription(_ level: Int) -> String {
        return leveledDescription(level,
                                 indent: Defaults.indent,
                                 indentOpening: Defaults.indentOpening,
                                 sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indent: The representation of one indent
    /// - Returns: A textual representation of this instance.
    func leveledDescription(indent: String) -> String {
        return leveledDescription(Defaults.level,
                                 indent: indent,
                                 indentOpening: Defaults.indentOpening,
                                 sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - indentOpening: Indicator if the first line should be indented
    /// - Returns: A textual representation of this instance.
    func leveledDescription(indentOpening: Bool) -> String {
        return leveledDescription(Defaults.level,
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
    func leveledDescription(_ level: Int, indent: String) -> String {
        return leveledDescription(level,
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
    func leveledDescription(_ level: Int, indentOpening: Bool) -> String {
        return leveledDescription(level,
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
    func leveledDescription(indent: String, indentOpening: Bool) -> String {
        return leveledDescription(Defaults.level,
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
    func leveledDescription(_ level: Int, indent: String, indentOpening: Bool) -> String {
        return leveledDescription(level,
                                  indent: indent,
                                  indentOpening: indentOpening,
                                  sortKeys: Defaults.sortKeys)
    }
    
    /// A textual representation of this instance. Indented to the proper level
    ///
    /// - Parameters:
    ///   - sortKeys: Indicator if the keys should be sorted before converting
    /// - Returns: A textual representation of this instance. Indented to the proper level
    func leveledDescription(sortKeys: Bool) -> String {
        return leveledDescription(Defaults.level,
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
    func leveledDescription(_ level: Int, sortKeys: Bool) -> String {
        return leveledDescription(level,
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
    func leveledDescription(indent: String, sortKeys: Bool) -> String {
        return leveledDescription(Defaults.level,
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
    func leveledDescription(indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDescription(Defaults.level,
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
    func leveledDescription(_ level: Int, indent: String, sortKeys: Bool) -> String {
        return leveledDescription(level,
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
    func leveledDescription(_ level: Int, indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDescription(level,
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
    func leveledDescription(indent: String, indentOpening: Bool, sortKeys: Bool) -> String {
        return leveledDescription(Defaults.level,
                                  indent: indent,
                                  indentOpening: indentOpening,
                                  sortKeys: sortKeys)
    }
}
