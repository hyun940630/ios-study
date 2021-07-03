//
//  RootViewController.swift
//  Calculator
//
//  Created by xtring on 2021/07/01.
//

import UIKit

class RootViewController:UIViewController {
    
    // MARK - Properties

    private lazy var numberZeroButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "0", width: 180)
    }()
    
    private lazy var numberOneButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "1", width: 80)
    }()
    
    private lazy var numberTwoButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "2", width: 80)
    }()
    
    private lazy var numberThreeButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "3", width: 80)
    }()
    
    private lazy var numberFourButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "4", width: 80)
    }()
    
    private lazy var numberFiveButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "5", width: 80)
    }()
    
    private lazy var numberSixButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "6", width: 80)
    }()
    
    private lazy var numberSevenButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "7", width: 80)
    }()
    
    private lazy var numberEightButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "8", width: 80)
    }()
    
    private lazy var numberNineButton:UIButton = {
        Utilites.shared.makeNumberButton(number: "9", width: 80)
    }()
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Configures
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(numberSevenButton)
        numberSevenButton.translatesAutoresizingMaskIntoConstraints = false
        numberSevenButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 360).isActive = true
        numberSevenButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        numberSevenButton.addTarget(self, action: #selector(onTapButton), for: .touchUpInside)
        
        view.addSubview(numberEightButton)
        numberEightButton.translatesAutoresizingMaskIntoConstraints = false
        numberEightButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 360).isActive = true
        numberEightButton.leftAnchor.constraint(equalTo: numberSevenButton.rightAnchor, constant: 20).isActive = true
        
        view.addSubview(numberNineButton)
        numberNineButton.translatesAutoresizingMaskIntoConstraints = false
        numberNineButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 360).isActive = true
        numberNineButton.leftAnchor.constraint(equalTo: numberEightButton.rightAnchor, constant: 20).isActive = true
        
        view.addSubview(numberFourButton)
        numberFourButton.translatesAutoresizingMaskIntoConstraints = false
        numberFourButton.topAnchor.constraint(equalTo: numberSevenButton.bottomAnchor, constant: 20).isActive = true
        numberFourButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        view.addSubview(numberFiveButton)
        numberFiveButton.translatesAutoresizingMaskIntoConstraints = false
        numberFiveButton.topAnchor.constraint(equalTo: numberEightButton.bottomAnchor, constant: 20).isActive = true
        numberFiveButton.leftAnchor.constraint(equalTo: numberFourButton.rightAnchor, constant: 20).isActive = true
        
        view.addSubview(numberSixButton)
        numberSixButton.translatesAutoresizingMaskIntoConstraints = false
        numberSixButton.topAnchor.constraint(equalTo: numberNineButton.bottomAnchor, constant: 20).isActive = true
        numberSixButton.leftAnchor.constraint(equalTo: numberFiveButton.rightAnchor, constant: 20).isActive = true

        view.addSubview(numberOneButton)
        numberOneButton.translatesAutoresizingMaskIntoConstraints = false
        numberOneButton.topAnchor.constraint(equalTo: numberFourButton.bottomAnchor, constant: 20).isActive = true
        numberOneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        view.addSubview(numberTwoButton)
        numberTwoButton.translatesAutoresizingMaskIntoConstraints = false
        numberTwoButton.topAnchor.constraint(equalTo: numberFiveButton.bottomAnchor, constant: 20).isActive = true
        numberTwoButton.leftAnchor.constraint(equalTo: numberOneButton.rightAnchor, constant: 20).isActive = true
        
        view.addSubview(numberThreeButton)
        numberThreeButton.translatesAutoresizingMaskIntoConstraints = false
        numberThreeButton.topAnchor.constraint(equalTo: numberSixButton.bottomAnchor, constant: 20).isActive = true
        numberThreeButton.leftAnchor.constraint(equalTo: numberTwoButton.rightAnchor, constant: 20).isActive = true

        view.addSubview(numberZeroButton)
        numberZeroButton.translatesAutoresizingMaskIntoConstraints = false
        numberZeroButton.topAnchor.constraint(equalTo: numberOneButton.bottomAnchor, constant: 20).isActive = true
        numberZeroButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
    }
    
//    @objc
//    func onTapButton() {
//        print("Button was tapped.")
//    }
}
