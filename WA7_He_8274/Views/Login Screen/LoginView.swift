//
//  LoginView.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import UIKit

class LoginView: UIView {

    var bottomAddView:UIView!
    var textFieldEmail: UITextField!
    var textFieldPassword: UITextField!
    var buttonLogin: UIButton!
    var buttonSignUp: UIButton!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupBottomAddView()
        setupTextFieldEmail()
        setupTextFieldPassword()
        setupButtonLogin()
        setupButtonSignUP()
        
        initConstraints()
        
    }
    
    func setupBottomAddView(){
            bottomAddView = UIView()
            bottomAddView.backgroundColor = .white
            bottomAddView.layer.cornerRadius = 6
            bottomAddView.layer.shadowColor = UIColor.lightGray.cgColor
            bottomAddView.layer.shadowOffset = .zero
            bottomAddView.layer.shadowRadius = 4.0
            bottomAddView.layer.shadowOpacity = 0.7
            bottomAddView.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(bottomAddView)
        }

    
    func setupTextFieldEmail(){
        textFieldEmail = UITextField()
        textFieldEmail.placeholder = "Email"
        textFieldEmail.borderStyle = .roundedRect
        textFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        bottomAddView.addSubview(textFieldEmail)
    }
    
    func setupTextFieldPassword(){
        textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Password"
        textFieldPassword.borderStyle = .roundedRect
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        bottomAddView.addSubview(textFieldPassword)
    }

    func setupButtonLogin(){
        buttonLogin = UIButton(type: .system)
        buttonLogin.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        bottomAddView.addSubview(buttonLogin)
        }
    
    func setupButtonSignUP(){
        buttonSignUp = UIButton(type: .system)
        buttonSignUp.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonSignUp.setTitle("SignUp", for: .normal)
        buttonSignUp.translatesAutoresizingMaskIntoConstraints = false
        bottomAddView.addSubview(buttonSignUp)
        }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            
            bottomAddView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -8),
                        bottomAddView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
                        bottomAddView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            buttonSignUp.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            buttonSignUp.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            buttonSignUp.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            buttonLogin.bottomAnchor.constraint(equalTo: buttonSignUp.bottomAnchor, constant: -20),
            buttonLogin.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            buttonLogin.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            buttonLogin.bottomAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: -8),
            buttonLogin.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            buttonLogin.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            buttonSignUp.bottomAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: -8),
            buttonSignUp.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            buttonSignUp.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),


        ])
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

}

