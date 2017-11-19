//
//  LoginViewController.swift
//  WeEat
//
//  Created by apple on 2017/11/18.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var registerButton, loginButton: UIButton!
    var logoImageView: UIImageView!
    var usernameTextField, passwordTextField: UITextField!
    
    var width, height: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        
        view.backgroundColor = .white
        
        width = view.frame.width
        height = view.frame.height
        
        registerButton = UIButton(frame: CGRect(x: width - 50, y: 0, width: 50, height: height * 0.08))
        registerButton.setTitle("注册", for: .normal)
        registerButton.setTitleColor(.black, for: .normal)
        registerButton.setTitleColor(.gray, for: .highlighted)
        registerButton.addTarget(self, action: #selector(register), for: .touchUpInside)
        view.addSubview(registerButton)
        
        usernameTextField = UITextField(frame: CGRect(x: width * 0.05, y: height * 0.25, width: width * 0.9, height: height * 0.08))
        usernameTextField.delegate = self
        usernameTextField.placeholder = "用户名"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.returnKeyType = .done
        view.addSubview(usernameTextField)
        
        passwordTextField = UITextField(frame: CGRect(x: width * 0.05, y: height * 0.35, width: width * 0.9, height: height * 0.08))
        passwordTextField.delegate = self
        passwordTextField.placeholder = "密码"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.returnKeyType = .done
        view.addSubview(passwordTextField)
        
        loginButton = UIButton(frame: CGRect(x: width * 0.05, y: height * 0.5, width: width * 0.9, height: height * 0.08))
        loginButton.backgroundColor = .orange
        loginButton.setTitle("登录", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitleColor(.gray, for: .highlighted)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        view.addSubview(loginButton)
    }
    
    @objc func register() {
        //TODO
    }
    
    @objc func login() {
        //TBD
        let tbc = MainTabBarController()
        tbc.selectedIndex = 2
        navigationController?.pushViewController(tbc, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
