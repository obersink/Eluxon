//
//  ViewController.swift
//  Eluxon
//
//  Created by Simon Zhen on 2/26/18.
//  Copyright © 2018 Simon Zhen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var switchStatus: SwitchStatus = .off
    
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func toggleBtnPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named: "offBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
            onOffLabel.text = "Off"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffLabel.text = "On"
            onOffLabel.textColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
        }
    }
    
}

