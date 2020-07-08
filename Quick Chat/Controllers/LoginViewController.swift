//
//  LoginViewController.swift
//  Quick Chat
//
//  Created by Adina Chiriliuc on 06/07/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            if let e = error {
                print(e)
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
       
            
            
            }
        }
        
        
    }
}
