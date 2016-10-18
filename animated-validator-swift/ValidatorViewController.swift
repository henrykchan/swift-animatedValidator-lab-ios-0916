//
//  ValidatorViewController.swift
//  animated-validator-swift
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import SnapKit

class ValidatorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailConfirmationTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    
    var counter: Int = 0
    //email TextField Constraints
    
    
    @IBAction func emailTextAction(_ sender: AnyObject) {
        
        
            
            if !((emailTextField.text?.contains("@"))!) || !(emailTextField.text?.contains("."))! {
                
                UIView.animate(withDuration: 0.25, delay: 0.0, options: [.curveEaseOut,.repeat,.autoreverse], animations: {
                    
                    UIView.setAnimationRepeatCount(3)
                    self.emailTextField.layer.borderColor = UIColor.red.cgColor
                    self.emailTextField.layer.borderWidth = 2
                    self.emailTextField.alpha = 0.0
                    self.emailTextField.text = "Invalid email"
                    
                    
                    }, completion: { _ in
                        
                        self.emailTextField.alpha = 1.0
                        self.emailTextField.layer.borderWidth = 0.0
                        self.emailTextField.text = ""
                        
                })
            }
            else {
                counter += 1
            }
            
            
            
        
        if counter == 5 {
            
            self.submitButton.isEnabled = true
        }
       
    }
    
    
    @IBAction func emailConfirmAction(_ sender: AnyObject) {
        
            
            if emailConfirmationTextField.text != emailTextField.text {
                
                UIView.animate(withDuration: 0.25, delay: 0.0, options: [.curveEaseOut,.repeat,.autoreverse], animations: {
                    
                    UIView.setAnimationRepeatCount(3)
                    self.emailConfirmationTextField.layer.borderColor = UIColor.red.cgColor
                    self.emailConfirmationTextField.layer.borderWidth = 2
                    self.emailConfirmationTextField.alpha = 0.0
                    self.emailConfirmationTextField.text = "Email does not match"
                    
                    
                    }, completion: { _ in
                        
                        self.emailConfirmationTextField.alpha = 1.0
                        self.emailConfirmationTextField.layer.borderWidth = 0.0
                        self.emailConfirmationTextField.text = ""
                        
                })
            }
            else {
                counter += 1
            }
            
        
            if counter == 5 {
                
                self.submitButton.isEnabled = true
            }
        
        }
    
    
    
    
    @IBAction func phoneAction(_ sender: AnyObject) {
        
        
        
        if (phoneTextField.text?.characters.count)! >= 7  {
            
            counter += 1
        }
            
        else {
            
            UIView.animate(withDuration: 0.25, delay: 0.0, options: [.curveEaseOut,.repeat,.autoreverse], animations: {
                
                UIView.setAnimationRepeatCount(3)
                self.phoneTextField.layer.borderColor = UIColor.red.cgColor
                self.phoneTextField.layer.borderWidth = 2
                self.phoneTextField.alpha = 0.0
                self.phoneTextField.text = "Invalid Phone Number"
                
                
                }, completion: { _ in
                    
                    self.phoneTextField.alpha = 1.0
                    self.phoneTextField.layer.borderWidth = 0.0
                    self.phoneTextField.text = ""
                    
            })
        }
        
        
        if counter == 5 {
            
            self.submitButton.isEnabled = true
        }
      
        
    }
    
    
    
    
    
    @IBAction func passwordAction(_ sender: AnyObject) {
        
            
        if (passwordTextField.text?.characters.count)! >= 6  {
            
            counter += 1
        }
            
        else {
            
            UIView.animate(withDuration: 0.25, delay: 0.0, options: [.curveEaseOut,.repeat,.autoreverse], animations: {
                
                UIView.setAnimationRepeatCount(3)
                self.passwordTextField.layer.borderColor = UIColor.red.cgColor
                self.passwordTextField.layer.borderWidth = 2
                self.passwordTextField.alpha = 0.0
                self.passwordTextField.text = "Invalid Password"
                
                
                }, completion: { _ in
                    
                    self.passwordTextField.alpha = 1.0
                    self.passwordTextField.layer.borderWidth = 0.0
                    self.passwordTextField.text = ""
                    
            })
        }
        
        
        if counter == 5 {
            
            self.submitButton.isEnabled = true
        }
     
        
    }
    
    
    
    
    
    
    @IBAction func passwordConfirmAction(_ sender: AnyObject) {
        
       
            
            
        
        if passwordConfirmTextField.text == passwordTextField.text  {
            
            counter += 1
        }
            
        else {
            
            UIView.animate(withDuration: 0.25, delay: 0.0, options: [.curveEaseOut,.repeat,.autoreverse], animations: {
                
                UIView.setAnimationRepeatCount(3)
                self.passwordConfirmTextField.layer.borderColor = UIColor.red.cgColor
                self.passwordConfirmTextField.layer.borderWidth = 2
                self.passwordConfirmTextField.alpha = 0.0
                self.passwordConfirmTextField.text = "Invalid Password"
                
                
                }, completion: { _ in
                    
                    self.passwordConfirmTextField.alpha = 1.0
                    self.passwordConfirmTextField.layer.borderWidth = 0.0
                    self.passwordConfirmTextField.text = ""
                    
            })
        }
        
        
        if counter == 5 {
            
            self.submitButton.isEnabled = true
            
            
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.orange
        
        self.submitButton.layer.borderColor = UIColor.black.cgColor
        self.submitButton.layer.borderWidth = 1.0
        
        
        //constraints
        self.view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.view).offset(50)
            make.width.equalTo(self.view).offset(-200)
            
        }
        
        self.view.addSubview(emailConfirmationTextField)
        emailConfirmationTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.width.equalTo(emailTextField.snp.width)
        }
        
        self.view.addSubview(phoneTextField)
        phoneTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(emailConfirmationTextField.snp.bottom).offset(10)
            make.width.equalTo(emailTextField.snp.width)
        }
        
        self.view.addSubview(submitButton)
        submitButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(phoneTextField.snp.bottom).offset(10)
            make.width.equalTo(emailTextField.snp.width)
        }
        
        self.view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(submitButton.snp.bottom).offset(10)
            make.width.equalTo(emailTextField.snp.width)
        }
        
        self.view.addSubview(passwordConfirmTextField)
        passwordConfirmTextField.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(passwordTextField.snp.bottom).offset(10)
            make.width.equalTo(emailTextField.snp.width)
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        self.submitButton.accessibilityLabel = Constants.SUBMITBUTTON
        self.emailTextField.accessibilityLabel = Constants.EMAILTEXTFIELD
        self.emailConfirmationTextField.accessibilityLabel = Constants.EMAILCONFIRMTEXTFIELD
        self.phoneTextField.accessibilityLabel = Constants.PHONETEXTFIELD
        self.passwordTextField.accessibilityLabel = Constants.PASSWORDTEXTFIELD
        self.passwordConfirmTextField.accessibilityLabel = Constants.PASSWORDCONFIRMTEXTFIELD
        
        self.submitButton.isEnabled = false
        
        
        
        
        
        
        
        
    }
    
}
