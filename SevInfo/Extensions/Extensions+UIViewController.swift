//
//  Extensions+UIViewController.swift
//  SevInfo
//
//  Created by Stanislav Povolotskiy on 26.02.2020.
//  Copyright © 2020 Stanislav Povolotskiy. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setLargeTitle(title str: String, isOn option: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = option
        title = str
    }
    
}
