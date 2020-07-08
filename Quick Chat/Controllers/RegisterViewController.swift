//
//  RegisterViewController.swift
//  Quick Chat
//
//  Created by Adina Chiriliuc on 06/07/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

   
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        
        if let email = emailTextField.text, let password = passwordTextField.text {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
                
                
                
                 }
            }
        }
    }
    
    
}
