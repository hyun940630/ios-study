//
//  Utilites.swift
//  Calculator
//
//  Created by xtring on 2021/07/02.
//

import UIKit

class Utilites {
    // shared : 클래스 안의 함수를 다른 클래스에서 접근하기 위해 인스턴스가 필요하다. 요청을 하는 클래스에서 인스턴스 객체를 생성하여 만들어도 되지만 shared라는 static 변수를 통해 간편하게 함수를 공유하여 사용할 수 있다.
    static let shared = Utilites()
    
    // Button을 만드는 함수
    // 텍스트, 배경, 폰트 색상
    func makeNumberButton(number: String, numberColor: UIColor, backgroundColor: UIColor) -> UIButton {
        let bt = UIButton(type: UIButton.ButtonType.system)
        bt.setTitle(number, for: UIControl.State.normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 42, weight: UIFont.Weight.regular)
        bt.backgroundColor = backgroundColor
        bt.tintColor = numberColor
        bt.widthAnchor.constraint(equalToConstant: 80).isActive = true
        bt.heightAnchor.constraint(equalToConstant: 80).isActive = true
        bt.layer.cornerRadius = 40
        return bt
    }
}
