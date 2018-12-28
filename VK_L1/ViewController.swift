//
//  ViewController.swift
//  VK_L1
//
//  Created by Чернецова Юлия on 26/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import UIKit

 class LoginVKController: UIViewController {

   
    @IBOutlet weak var loginInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        let login = loginInput.text!
        let password = passwordInput.text!
        if login == "admin" && password == "123456" {
          print("Успешная регистрация!")
        } else {
            print("ошибка авторизации!")
        }
        
    }
        
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }

  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardWillShowNotification,object:nil)
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardWillHideNotification,object:nil)
        
    }
    
    
    //Keyboard disappear
    @objc func keyboardWillBeHidden(notification:Notification){
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc func hideKeyboard(){
        self.scrollView?.endEditing(true)
    }

    @objc func keyboardWasShown(notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top:0.0,left:0.0,bottom:kbSize.height,right: 0.0)
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
}

