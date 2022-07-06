//
//  ViewController.swift
//  Lesson 5 homework
//
//  Created by Ravil Gubaidulin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties

    private lazy var titelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 26)
        label.text = Strings.titelLabel.rawValue
        label.textAlignment = .center
        label.numberOfLines = 2
        label.preferredMaxLayoutWidth = 200
        return label
    }()

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.text = Strings.loginLabel.rawValue
        label.sizeToFit()
        return label
    }()

    private lazy var emailLabel: UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = Strings.emailLabel.rawValue
        label.sizeToFit()
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.keyboardType = .emailAddress
        textField.placeholder = Strings.emailTextField.rawValue
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label  = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = Strings.passwordLabel.rawValue
        label.sizeToFit()
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.placeholder = Strings.passowrdTextField.rawValue
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    
    private lazy var faceidLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = Strings.faceidLabel.rawValue
        label.textAlignment = .center
        return label
    }()
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        constrainSubviews()
    }

    // MARK: Methods

    //кнопка с гзалом, переключение видимости текста
    @IBAction func eyeButtonDidTap() {
        if passwordTextField.isSecureTextEntry == false {
            passwordTextField.isSecureTextEntry = true
        } else {
            passwordTextField.isSecureTextEntry = false
        }
    }

    private func addSubviews() {
        view.addSubview(titelLabel)
        view.addSubview(loginLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(faceidLabel)
    }

    private func constrainSubviews() {
        NSLayoutConstraint.activate([
            titelLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titelLabel.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 0)
        ])
        NSLayoutConstraint.activate([
            loginLabel.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            loginLabel.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 170)
        ])
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            emailLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 40)
        ])
        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.trailingAnchor.constraint(equalTo: view.safeTrailingAnchor, constant: -60)
        ])
        NSLayoutConstraint.activate([
            passwordLabel.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30)
        ])
        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeTrailingAnchor, constant: -60)
        ])
        NSLayoutConstraint.activate([
            faceidLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            faceidLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 45)
        ])
    }
}

