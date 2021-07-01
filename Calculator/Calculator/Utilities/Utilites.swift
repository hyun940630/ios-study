//
//  Utilites.swift
//  Calculator
//
//  Created by xtring on 2021/07/02.
//

import UIKit

class Utilites {
    private static let shared = Utilites()
    
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
