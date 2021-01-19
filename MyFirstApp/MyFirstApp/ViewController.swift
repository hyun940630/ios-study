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
        
        // Circle의 위치 및 크기 설정
        circle.frame = CGRect(x: centerX, y: centerY, width: 100, height: 100)
        // circle의 색깔 설정
        circle.layer.backgroundColor = UIColor.red.cgColor
        // circle의 radius를 width(height)의 반으로 설정하여 원 모양으로 만듦
        circle.layer.cornerRadius = 50
        circle.layer.shadowOpacity = 0.5
        circle.layer.shadowRadius = 7
        
        self.view.addSubview(circle)
    }


}

