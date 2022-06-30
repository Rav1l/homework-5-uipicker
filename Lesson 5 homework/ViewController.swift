//
//  ViewController.swift
//  Lesson 5 homework
//
//  Created by Ravil Gubaidulin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //кнопка с гзалом, переключение видимости текста
    @IBAction func eyeButtonDidTap() {
        if textFields[1].isSecureTextEntry == false {
            textFields[1].isSecureTextEntry = true
        } else {
            textFields[1].isSecureTextEntry = false
        }
    }
    
}

