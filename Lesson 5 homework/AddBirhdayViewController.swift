//
//  AddBirhdayViewController.swift
//  Lesson 5 homework
//
//  Created by Ravil Gubaidulin on 12.05.2022.
//

import UIKit

class AddBirhdayViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    //MARK: - Pickers
    var currentDatePiker = UIDatePicker()
    var agePicker = UIPickerView()
    var genderPicker = UIPickerView()

    deinit {
        print("\(self): I'm dead.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - настройка currentDatePicker
        //отображение в View
        self.dateTextField.inputView = currentDatePiker
        //настройка currentDatePicker
        self.currentDatePiker.datePickerMode = .dateAndTime
        self.currentDatePiker.preferredDatePickerStyle = .wheels
        //язык
        let localeID = Locale.preferredLanguages.first
        self.currentDatePiker.locale = Locale(identifier: localeID!)
        //цвет фона
        self.currentDatePiker.backgroundColor = .white
        
//        //добавляем toolbar к currentDatePicker
//        let toolbar = UIToolbar()
//        toolbar.sizeToFit()
//
//        //кнопка готов
//        let doneButton = UIBarButtonItem(title: "Готово", style: .done, target: self, action: #selector(doneAction))
//
//        //смещаем кнопнку в право
//        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        toolbar.setItems([flexSpace ,doneButton], animated: true)
//
//        self.dateTextField.inputAccessoryView = toolbar
        
        //изменение dateTextField  во время выбора даты
        self.currentDatePiker.addTarget(self, action: #selector(doneChancge), for: .valueChanged)
        
        //закрытие currentDatePicker при нажатия на полке вне currentDatePicker
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureDone))
        self.view.addGestureRecognizer(tapGesture)
        
        //MARK: - настройка agePicker
        //отображение в View
        self.ageTextField.inputView = agePicker
        //
        
        //цвет фона
        self.agePicker.backgroundColor = .white
        
        
        
        //MARK: - настройка genderPicker
        
        
    }
    //MARK: - #selectors
    // изменение dateTextField  после нажатия кнопки "Готово"
    @objc func doneAction() {
        //getDateFromPicker()
        view.endEditing(true)
    }
    // закрытие currentDatePicker при нажатия кнопки "Готово"
    @objc func doneChancge() {
        getDateFromPicker()
    }
    // закрытие currentDatePicker при нажатия на полке вне currentDatePicker
    @objc func tapGestureDone() {
        view.endEditing(true)
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }

    func getDateFromPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        self.dateTextField.text = formatter.string(from: currentDatePiker.date)
    }
    
}
