//
//  ViewController.swift
//  DesenvSwiftAula01
//
//  Created by Usuário Convidado on 24/03/18.
//  Copyright © 2018 Fellipe Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
    }
    
    @IBAction func register(_ sender: UIButton) {
        view.endEditing(true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        } else {
            tfPassword.becomeFirstResponder()
        }
        return true
    }
}
