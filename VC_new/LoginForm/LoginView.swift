//
//  LoginView.swift
//  VC_new
//
//  Created by Ekaterina Donskaya on 22/09/2020.
//

import UIKit

class LoginView: UIView {

    let logoLabel = UILabel()
    let loginLabel = UILabel()
    let loginTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let button = UIButton()
    let backgroundImage = UIImage(named: "loginScreen3.png")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        backgroundSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        NSLayoutConstraint.activate([
            
            logoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoLabel.topAnchor.constraint(equalTo: topAnchor, constant: +100),
            
            loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            loginLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -300),
            loginLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            passwordLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -300),
            passwordLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 10),
            
            loginTextField.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 16),
            loginTextField.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginTextField.widthAnchor.constraint(equalTo: widthAnchor, constant: -16),
            
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.trailingAnchor, constant: 16),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10),
            passwordTextField.widthAnchor.constraint(equalTo: widthAnchor, constant: -16),
            
            button.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: +20),
            button.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
    }
    

    private func setup() {
        
        logoLabel.text = "db"
        logoLabel.font = UIFont.boldSystemFont(ofSize: 30)
        addSubview(logoLabel)
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        logoLabel.backgroundColor = .clear
        
        loginLabel.text = "Login"
        addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.backgroundColor = .clear
        
        passwordLabel.text = "Password"
        addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.backgroundColor = .clear
        
        loginTextField.text = "admin"
        loginTextField.textAlignment = .center
        addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.backgroundColor = .white
        
        passwordTextField.text = "123456"
        passwordTextField.textAlignment = .center
        addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.backgroundColor = .white
        
        button.setTitle("Join", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)
        
        setNeedsUpdateConstraints()
    }
    
    @objc func buttonAction() {
        let login = loginTextField.text!
        let password = passwordTextField.text!
        
        if login == "admin" && password == "123456" {
            debugPrint("Успешная авторизация")
        } else {
            debugPrint("Неправильный логин или пароль")
        }
        
    }

    
    private func backgroundSetup() {
        let imageView = UIImageView(image: backgroundImage)
        imageView.frame = frame
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        insertSubview(imageView, at:0)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([imageView.leadingAnchor.constraint(equalTo: leadingAnchor), imageView.trailingAnchor.constraint(equalTo: trailingAnchor), imageView.topAnchor.constraint(equalTo: topAnchor), imageView.bottomAnchor.constraint(equalTo: bottomAnchor)])
        setNeedsUpdateConstraints()
        
    }
    
}
