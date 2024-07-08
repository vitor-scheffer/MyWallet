//
//  MyWalletBaseURL.swift
//  MyWallet
//
//  Created by Vitor Scheffer on 08/07/24.
//

import Foundation

final public class MyWalletBaseURL {
    public static var baseURL: String {
        return "https://brapi.dev"
    }
    
    public static var apiKey: String {
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
        else { return "" }
        
        return apiKey
    }
}
