//
//  Utilites.swift
//  Calculator
//
//  Created by xtring on 2021/07/02.
//

import UIKit

class Utilites {
    
    static let shared = Utilites()
    
    func makeNumberButton(number: String, width: Float) -> UIButton {
        let bt = UIButton(type: UIButton.ButtonType.system)
        bt.setTitle(number, for: UIControl.State.normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 42, weight: UIFont.Weight.regular)
        bt.backgroundColor = .systemGray5
        bt.tintColor = .white
        bt.tag = Int(number)!
        bt.widthAnchor.constraint(equalToConstant: CGFloat(width)).isActive = true
        bt.heightAnchor.constraint(equalToConstant: 80).isActive = true
        bt.layer.cornerRadius = 40
        
        bt.addTarget(self, action: #selector(onTapButton), for: .touchUpInside)
        
        return bt
    }
    
    @objc
    func onTapButton(sender: UIButton) {
        print(sender.tag)
        print("tab button")
    }
}
 
