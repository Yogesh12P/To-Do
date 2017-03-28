//
//  RegisterPageViewController.swift
//  to-do
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 yogesh. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    @IBOutlet var emailidTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var reenterPasswordTextField: UITextField!
    
    
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert",message:userMessage,preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK",style:UIAlertActionStyle.default,handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert,animated:true,completion:nil)
    }
    
    @IBAction func registrationButtonTaped(_ sender: UIButton) {
        
        let userEmail = emailidTextField.text
        let userPassword = passwordTextField.text
        let userReenterPassword = reenterPasswordTextField.text
        
        //check empty fields
        if (userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userReenterPassword?.isEmpty)!
        {
            displayAlertMessage(userMessage: "All fields are Required..")
            return;
        
        }
        
        //check both password fields are same...,
        else if (userPassword != userReenterPassword)
        {
        self.displayAlertMessage(userMessage: "Enter password and re-enter password field same..")
            return;
        }
        else if(!emailIsvalid(useremail: userEmail!))
        {
            
            self.displayAlertMessage(userMessage: "E-mail Address is not valid..,")
        }
        else
        {
            UserDefaults.standard.set(userEmail, forKey: "userEmailStored")
            UserDefaults.standard.set(userPassword, forKey: "userPasswordStored")
            
            //alert message with confirmaion
            let myAlert = UIAlertController(title:"Succefull",message:"Registration Succefull..!",preferredStyle:UIAlertControllerStyle.alert)
            
            let okAction = UIAlertAction(title:"OK",style:UIAlertActionStyle.default){ ACTION in
                self.dismiss(animated: true,completion: nil)
            }
            myAlert.addAction(okAction)
            self.present(myAlert,animated:true , completion:nil)
            
            return;
            
        }


        
    }
    
    //check email is valid or not...,
    func emailIsvalid(useremail:String) -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-za-z]{2,}"
        let emailTest = NSPredicate(format:"self Matches %@",emailRegEx)
        
        return emailTest.evaluate(with: useremail)
        
    }

        
        //save the data
    
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
