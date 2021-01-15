//
//  ViewController.swift
//  UpDownGame
//
//  Created by xtring on 2021/01/10.
//

import UIKit


// single-line comments
/*
 multi -
 line
 comments
 */

class ViewController: UIViewController {

    var randomValue: Int = 0
    var tryCount: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "adminProfile"), for: .normal) // .normal : 아무때나 표시하겠다.
        reset()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
        let integerValue: Int = Int(sender.value)   // 소수점까지 보여줄 필요가 없기 때문에 먼저 int 형태로 변환해준다.
        sliderValueLabel.text = String(integerValue)
    }
    
    func showAlert(message: String) {
        // nil = 없다
        let alert = UIAlertController(title: nil,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
            self.reset()
        }
        alert.addAction(okAction)
        present(alert,
                animated: true,
                completion: nil)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)  // slider는 float 타입의 값을 사용하기 때문에 다시 float로 변환하여 사용합니다.
        
        tryCount = tryCount + 1
        tryCountLabel.text = "\(tryCount) / 5"  // (문자열 보간법 사용) === tryCountLabel.text = String(tryCount) + " / 5"
        
        if randomValue == hitValue {    // if 비교 { ... }, return 으로 메서드를 탈출할 수 있다..!
            showAlert(message: "YOU HIT!!")
            reset()
        } else if tryCount >= 5 {
            showAlert(message: "YOU LOSE...")
            reset()
        } else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLabel.text = String(hitValue)
        } else {
            slider.maximumValue = Float(hitValue)
            maximumValueLabel.text = String(hitValue)
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        print("reset!")
        randomValue = Int.random(in: 0...30)    // 범위 연산자(폐쇄 범위 연산자)
                                                /*
                                                 0..<30 : 반 폐쇄 범위 연산자(0부터 29)
                                                 0... or ...30 or ..< 30 : 단방향 범위 연산자
                                                 */
        print(randomValue)
        
        // 초기화
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}

