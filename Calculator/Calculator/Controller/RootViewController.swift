//
//  RootViewController.swift
//  Calculator
//
//  Created by xtring on 2021/07/01.
//

import UIKit

class RootViewController:UIViewController {
    
    // MARK - Properties
    
    // 버튼을 만든다! 버튼은 속성값이므로 여기서!
    // lazy 키워드를 사용하면 '가능한 늦게 만들어!'라는 의미로 나중에 여러개 생성될 버튼들이 각각의 기능을 할 수 있도록 함. 속성을 동적으로 만듬
    private lazy var numberButton:UIButton = {
        let bt = UIButton(type: UIButton.ButtonType.system)     // 대체적(일반적)으로 color값은 system, normal을 많이 사용한다
        bt.setTitle("1", for: UIControl.State.normal)   // Button에 들어갈 내용과 색상 설정
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 42, weight: UIFont.Weight.regular)
        bt.backgroundColor = .systemGray2
        bt.tintColor = .white
        bt.widthAnchor.constraint(equalToConstant: 80).isActive = true
        bt.heightAnchor.constraint(equalToConstant: 80).isActive = true
        bt.layer.cornerRadius = 40
        return bt
    }()
    // ()의 의미: 실행한다.
    
    // MARK: - Lifecycles
    
    // 이 클래스가 처음에 호출되어졌을때 딱 한 번만 호출되어지는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Configures
    
    // UI를 설정하는 함수
    func configureUI() {
        // 처음에 설정하지 않으면 실제로는 '검정'이며 이는 실제로 색이 입혀진 것이 아니다.
        view.backgroundColor = .systemBackground    // system의 color 세팅을 따라 설정된다.
    
        view.addSubview(numberButton)
        numberButton.translatesAutoresizingMaskIntoConstraints = false      // 꼭 넣어줘라. 코드로 UI를 생성했을 때 UI가 동적으로 기능을 가질 수 있다.
        numberButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        numberButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    }
}
