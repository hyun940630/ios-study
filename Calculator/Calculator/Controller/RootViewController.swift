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
    private lazy var numberButton:UIButton = {
        let bt = UIButton(type: UIButton.ButtonType.system)
        
        var varkeyword = "var"  // 값의 변경이 가능
        let letkeyowrd = "let"  // 값을 변경할 수 없음. constant value
        return bt
    }()
    
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
    }
}
