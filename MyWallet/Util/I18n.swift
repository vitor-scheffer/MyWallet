//
//  I18n.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

public protocol I18nProtocol {
    var text: String { get }

    func text(with complement: String...) -> String
}

public final class I18n {
    public enum General: String, I18nProtocol {
        case appName = "MWapp.name"
        case secretKey = "MWsecret.key"
        case saved = "MWsaved"
        case removed = "MWremoved"
        case ok = "MWok"
        
        public var text: String {
            return NSLocalizedString(self.rawValue.localized, comment: "")
        }
        
        public func text(with complement: String...) -> String {
            String(format: NSLocalizedString(self.text, comment: "%@"), arguments: complement)
        }
    }
    
    public enum APIError: String, I18nProtocol {
        case title = "MWerror.title"
        case message = "MWerror.message"
        
        public var text: String {
            return NSLocalizedString(self.rawValue.localized, comment: "")
        }
        
        public func text(with complement: String...) -> String {
            String(format: NSLocalizedString(self.text, comment: "%@"), arguments: complement)
        }
    }
    
    public enum Logger: String, I18nProtocol {
        case succeeded = "MWlogger.succeeded"
        case failed = "MWlogger.failed"
        
        public var text: String {
            return NSLocalizedString(self.rawValue.localized, comment: "")
        }
        
        public func text(with complement: String...) -> String {
            String(format: NSLocalizedString(self.text, comment: "%@"), arguments: complement)
        }
    }
}
