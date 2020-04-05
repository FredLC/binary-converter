//
//  ViewController.swift
//  Binary
//
//  Created by Fred Lefevre on 2020-04-05.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var binaryButton: UIButton!
    
    @IBOutlet weak var decimalButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        let placeholder = NSAttributedString(string: "Enter value...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightText, NSAttributedString.Key.font: UIFont(name: "Menlo", size: 36.0)!])
        inputTextField.attributedPlaceholder = placeholder
        inputTextField.addTarget(self, action: #selector(inputDidChange), for: .editingChanged)
        binaryButton.isEnabled = false
        decimalButton.isEnabled = false
    }
    
    
    @objc func inputDidChange() {
        if inputTextField.text == "" {
            binaryButton.isEnabled = false
            decimalButton.isEnabled = false
        } else {
            binaryButton.isEnabled = true
            decimalButton.isEnabled = true
        }
    }
    

    @IBAction func binaryButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func decimalButtonPressed(_ sender: Any) {
    }
    
}

