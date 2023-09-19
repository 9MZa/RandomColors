//
//  ColorDetailViewController.swift
//  RandomColors
//
//  Created by Bandit Silachai on 18/9/23.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
