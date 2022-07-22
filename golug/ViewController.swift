//
//  ViewController.swift
//  golug
//
//  Created by Shiv on 30/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func btnSigninClicked(_ sender: UIButton) {
        
        let isValidmail = isValidEmail(email: txtEmail.text ?? "")
        let isValidpass = isValidPassword(Password: txtPassword.text ?? "")
        
        
        if isValidmail && isValidpass {
            UserDefaults.standard.set(true, forKey: "isLogin")
            UserDefaults.standard.set(txtEmail.text, forKey: "EmailId")
            UserDefaults.standard.set(txtPassword.text, forKey: "Password")

            if let homeVC = self.storyboard?.instantiateViewController(identifier: "DetailsTableViewController") as? DetailsTableViewController {
                   self.navigationController?.pushViewController(homeVC, animated: true)
            }
        }
        
    }
    @IBAction func signUp(_ sender: UIButton) {
        
        if let homeVc = self.storyboard?.instantiateViewController(identifier: "SignupViewController")as? SignupViewController {self.navigationController?.pushViewController(homeVc, animated: true)
            
        }
    }
    
    
    func isValidEmail(email: String) -> Bool {
            if email == "" {
                let alert = UIAlertController(title: "Alert", message: "Please enter your email id", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
            
            if email.contains("@") == false {
                let alert = UIAlertController(title: "Alert", message: "Please enter valid email id", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
            
            if email.contains(".") == false {
                let alert = UIAlertController(title: "Alert", message: "Please enter valid email id", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
        
        return true
    }
    func isValidPassword(Password: String) -> Bool {
            if Password == "" {
                let alert = UIAlertController(title: "Alert", message: "Please enter password", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
        if Password.count > 8 {
            let alert = UIAlertController(title: "Alert", message: "Please enter password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
            
        }  
        
return true
        
        
}
    
    @IBAction func AddNewbtn(_ sender: Any) {
        if let homeVc = self.storyboard?.instantiateViewController(identifier: "HomeViewController")as? HomeViewController {self.navigationController?.pushViewController(homeVc, animated: true)
            
        
        
    }
    
    
}

/*
Validation
 1- Email id shoud not blank
 2- shivshankargupta25@gmail.com  must contain @ and .
 */



 

 
// Password
// 1- passwordshould not blank
// 2- minimum 8 char
 
}
