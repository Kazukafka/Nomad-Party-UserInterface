//
//  SignInViewController.swift
//  NomadParty
//
//  Created by Alex Gaskins on 7/26/20.
//  Copyright © 2020 Alex Gaskins. All rights reserved.
//

import UIKit
import ProgressHUD

class SignInViewController: UIViewController {

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    setupUI()
        
           }
           
           func setupUI() {
               
               setupTitleTextLabel()
               setupEmailTextField()
               setupPasswordTextField()
               setupSignInButton()
               setupSignUpButton()
            
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func signInButtonDidTapped(_ sender: Any) {
        
        self.view.endEditing(true)
        self.validateFields()
        self.signIn(onSuccess: {
            (UIApplication.shared.delegate as! AppDelegate).configureInitialViewController() 
        }) { (errorMessage) in
            ProgressHUD.showError(errorMessage)
        }
        
    }
    
    
}
