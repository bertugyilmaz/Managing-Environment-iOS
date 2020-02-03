//
//  ViewController.swift
//  Managing-Environment
//
//  Created by Bertug YILMAZ on 3.02.2020.
//  Copyright © 2020 bertugyilmaz. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    private let environment = Environment.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let environmentName: String = try! environment.configuration(.environmentName)
        let baseUrl: String = try! environment.configuration(.baseUrl)
        
        print(environmentName)
        print(baseUrl.replacingOccurrences(of: "\\", with: ""))
        
//        let missingValue: String = try! environment.configuration(.appIconName)
//        print(missingValue)
    }
}

