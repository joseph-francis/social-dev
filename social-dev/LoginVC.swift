//
//  LoginVC.swift
//  social-dev
//
//  Created by Joseph on 3/9/17.
//  Copyright © 2017 Joseph. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func fbLoginPressed(_ sender: Any) {
        
        let fbManager = FBSDKLoginManager()
        
        fbManager.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Error loging in \(error)")
            } else if (result?.isCancelled)! {
                print("Login cancelled by the user; access deined")
            } else {
                print("Authetication successfull")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential: credential)
            }
        }
        
    }
    
    func firebaseAuth(credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("Error authenticating with Firebase \(error)")
            } else {
                print("User Authenticated")
            }
        })
    }
    
    
    
}






















