//
//  ViewController.swift
//  The Ligth
//
//  Created by Алексей Пасынков on 19.10.2020.
//

import UIKit


class ViewController: UIViewController {

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    var isLightOn = 0
    
    // MARK: -method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWindow()
    }

  
    
    fileprivate func updateWindow() {
        switch isLightOn {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .red
        default:
            view.backgroundColor = .white
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn = isLightOn < 3 ? isLightOn + 1 : 1
        updateWindow()
        
    }
 
}

