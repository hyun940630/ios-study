//
//  CreditViewController.swift
//  UpDownGame
//
//  Created by xtring on 2021/01/15.
//

import UIKit

class CreditViewController: UIViewController {

    @IBAction func touchUpDismissButton(_ sender: UIButton) {
        // dismiss() : 화면을 사라지게 하는 메서드(<-> present(): 화면에서 보이게 한다)
        dismiss(animated: true,
                completion: nil)
    }
}
