//
//  ExtensionsUserDefaults.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/6/22.
//

import Foundation
struct Defaults {
    enum Key: String {
        case language = "language"
    }
    static var language: String? {
        get {
            let language = UserDefaults.standard.string(forKey: Key.language.rawValue)
            return language ?? nil
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Key.language.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
