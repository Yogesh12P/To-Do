//
//  LoginViewController.swift
//  to-do
//
//  Created by gaurav on 28/03/17.
//  Copyright © 2017 yogesh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let userLoginStored = UserDefaults.standard.string(forKey: "userEmailStored")
    let userPasswordStored = UserDefaults.standard.string(forKey: "userPasswordStored")
   
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert",message:userMessage,preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK",style:UIAlertActionStyle.default,handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert,animated:true,completion:nil)
    }

    
    @IBAction func loginButtonTaped(_ sender: UIButtonType) {
        
        if userLoginStored != loginTextField.text
        {
            //email invalid
            displayAlertMessage(userMessage: "Email address is invalid")
        }
        else if userPasswordStored != passwordTextField.text
        {
            //pssword invalid
            displayAlertMessage(userMessage: "Password is invalid")
        }
        else
        {
            displayAlertMessage(userMessage: "Login succefully")
            //login successfull
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
