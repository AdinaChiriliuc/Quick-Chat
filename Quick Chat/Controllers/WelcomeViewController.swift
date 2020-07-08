//
//  WelcomeViewController.swift
//  Quick Chat
//
//  Created by Adina Chiriliuc on 06/07/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBAction func loginPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
         super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
       var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    

  
    
    

}
