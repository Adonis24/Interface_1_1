//
//  ViewController.swift
//  VK_L1
//
//  Created by Чернецова Юлия on 26/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import UIKit

final class LoginVKController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//
//    @objc func keyboardWasShown(notification: Notification){
//        let info = notification.userInfo! as NSDictionary
//        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
//        let contentInsets = UIEdgeInsets(top:0.0,left:0.0,bottom:kbSize.height,right: 0.0)
//        self.scrollView?.contentInset = contentInsets
//        scrollView?.scrollIndicatorInsets = contentInsets
//    }
//    //Keyboard disappear
//    @objc func keyboardWillBeHidden(notification:Notification){
//        let contentInsets = UIEdgeInsets.zero
//        scrollView?.contentInset = contentInsets
//        scrollView?.scrollIndicatorInsets = contentInsets
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden), name: UIResponder.keyboardWillHideNotification, object: nil)
//
//    }
}

