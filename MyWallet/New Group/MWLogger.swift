//
//  MWLogger.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

enum LogType {
    case success(url: String)
    case failed(url: String)
}

public final class MWLogger {
    
    class func log(_ type: LogType) {
        switch type {
        case .success(url: let url):
            print(I18n.Logger.succeeded.text(with: url))
        case .failed(url: let url):
            print(I18n.Logger.failed.text(with: url))
        }
    }
}
