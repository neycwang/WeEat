//
//  RegisterViewController.swift
//  WeEat
//
//  Created by apple on 2017/11/22.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var width, height: CGFloat!
    var registerButton: UIButton!
    var usernameTextField, passwordTextField, repeatTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = false
        title = "注册"
        
        view.backgroundColor = .white
        
        width = view.frame.width
        height = view.frame.height
        
        usernameTextField = UITextField(frame: CGRect(x: width * 0.05, y: height * 0.15, width: width * 0.9, height: height * 0.08))
        usernameTextField.delegate = self
        usernameTextField.placeholder = "用户名"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.returnKeyType = .done
        view.addSubview(usernameTextField)
        
        passwordTextField = UITextField(frame: CGRect(x: width * 0.05, y: height * 0.25, width: width * 0.9, height: height * 0.08))
        passwordTextField.delegate = self
        passwordTextField.placeholder = "密码"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.returnKeyType = .done
        view.addSubview(passwordTextField)
        
        repeatTextField = UITextField(frame: CGRect(x: width * 0.05, y: height * 0.35, width: width * 0.9, height: height * 0.08))
        repeatTextField.delegate = self
        repeatTextField.placeholder = "确认密码"
        repeatTextField.isSecureTextEntry = true
        repeatTextField.borderStyle = .roundedRect
        repeatTextField.returnKeyType = .done
        view.addSubview(repeatTextField)
        
        registerButton = UIButton(frame: CGRect(x: width * 0.05, y: height * 0.5, width: width * 0.9, height: height * 0.08))
        registerButton.backgroundColor = .orange
        registerButton.setTitle("注册", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.setTitleColor(.gray, for: .highlighted)
        registerButton.addTarget(self, action: #selector(register), for: .touchUpInside)
        view.addSubview(registerButton)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc func register() {
        //TODO
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
