//
//  ViewController.swift
//  MyFirstApp
//
//  Created by xtring on 2021/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    var circle: UIView = UIView()
    var centerX = UIScreen.main.bounds.size.width * 0.5
    var centerY = UIScreen.main.bounds.size.height * 0.5

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // circle을 뷰의 정중앙으로 이동하기 위해 위치를 조정해 준다.
        circle.frame = CGRect(x: centerX - 50, y: centerY - 50, width: 100, height: 100)
        circle.layer.backgroundColor = UIColor.red.cgColor
        circle.layer.cornerRadius = 50
        circle.layer.shadowOpacity = 0.5
        circle.layer.shadowRadius = 7
        
        self.view.addSubview(circle)
    }


}

