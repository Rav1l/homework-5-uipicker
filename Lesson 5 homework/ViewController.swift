//
//  ViewController.swift
//  Lesson 5 homework
//
//  Created by Ravil Gubaidulin on 09.05.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties

    @IBOutlet var textFields: [UITextField]!

    @IBOutlet weak var emailLabel: UILabel!

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.text = Strings.login.rawValue
        label.sizeToFit()
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
        if textFields[1].isSecureTextEntry == false {
            textFields[1].isSecureTextEntry = true
        } else {
            textFields[1].isSecureTextEntry = false
        }
    }

    private func addSubviews() {
        view.addSubview(loginLabel)
    }

    private func constrainSubviews() {
        NSLayoutConstraint.activate([
            loginLabel.leadingAnchor.constraint(equalTo: view.safeLeadingAnchor, constant: 40),
            loginLabel.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 170),
            loginLabel.bottomAnchor.constraint(equalTo: emailLabel.topAnchor, constant: -40)
        ])
    }
}

