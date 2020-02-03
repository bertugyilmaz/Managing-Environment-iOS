//
//  Environment.swift
//  Managing-Environment
//
//  Created by Bertug YILMAZ on 3.02.2020.
//  Copyright © 2020 bertugyilmaz. All rights reserved.
//

import Foundation

final class Environment {
    static let shared: Environment = Environment()
    
    enum Error: Swift.Error {
        case missingKey, castingError
    }
    
    enum Keys: String {
        case appName = "APP_NAME"
        case appIconName = "APP_ICON_NAME"
        case baseUrl = "BASE_URL"
        case apiKey = "API_KEY"
        case environmentName = "ENVIRONMENT_NAME"
    }
    
    func configuration<T>(_ key: Keys) throws -> T {
    
        guard let value = Bundle.main.object(forInfoDictionaryKey: key.rawValue) else {
            throw Error.missingKey
        }
        
        if let value = value as? T {
            return value
        }
        
        throw Error.castingError
    }
}
