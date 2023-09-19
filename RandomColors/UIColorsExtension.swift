//
//  UIColorsExtension.swift
//  RandomColors
//
//  Created by Bandit Silachai on 19/9/23.
//

import UIKit


extension UIColor {
    static func random() -> UIColor {
        let random = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return random
    }
}
