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
    var isLightOn = true
    
    // MARK: -method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWindow()
    }

  
    
    fileprivate func updateWindow() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateWindow()
        
    }
 
}

