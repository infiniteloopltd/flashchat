//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        
        //TODO: Log in the user
        Auth.auth().signIn(
            withEmail: emailTextfield.text!,
            password: passwordTextfield.text!) { (User, Error) in
            if Error != nil
            {
                // Error happened
                print(Error!)
            }
            else
            {
                // worked
                print("login complete")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
            }
        }
        
    }
    


    
}  
