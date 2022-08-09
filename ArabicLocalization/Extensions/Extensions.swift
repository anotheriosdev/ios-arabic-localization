//
//  Extensions.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/4/22.
//

import Foundation
extension String {
    var appLanguage: String {
        
        get {
            if let language = Defaults.language {
                return language
            } else {
                return "en"
            }
        }
        
        set(value) {
            Defaults.language = value
        }
        
    }
    
    var localized: String {
        return localized(lang: appLanguage)
    }
    
    var localizeStringUsingSystemLang: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(lang: String?) -> String {
        
        if let lang = lang {
            if let path = Bundle.main.path(forResource: lang, ofType: "lproj") {
                let bundle = Bundle(path: path)
                return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
            }
        }
        
        return localizeStringUsingSystemLang
    }
}
