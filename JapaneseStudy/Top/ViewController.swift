//
//  ViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/24.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonA: UIButton!
    
    @IBOutlet weak var buttonB: UIButton!
    
    @IBOutlet weak var buttonC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rgba = UIColor(red: 255/255, green: 128/255, blue: 168/255, alpha: 1.0) // ボタン背景色設定
        buttonA.backgroundColor = rgba
        buttonB.backgroundColor = rgba
        buttonC.backgroundColor = rgba
        // 背景色
        
        buttonA.layer.borderWidth = 0.5
        buttonB.layer.borderWidth = 0.5
        buttonC.layer.borderWidth = 0.5 // 枠線の幅
        
        buttonA.layer.borderColor = UIColor.black.cgColor
        buttonB.layer.borderColor = UIColor.black.cgColor
        buttonC.layer.borderColor = UIColor.black.cgColor// 枠線の色
        buttonA.layer.cornerRadius = 5.0
        buttonB.layer.cornerRadius = 5.0
        buttonC.layer.cornerRadius = 5.0 // 角丸のサイズ
        buttonA.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonB.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonC.setTitleColor(UIColor.white, for: UIControl.State.normal)
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonLearn(_ sender: Any) {
        self.performSegue(withIdentifier: "toLearn", sender: 0)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLearn"  {
            let nextVC = segue.destination as! GrammarViewController
            nextVC.version = sender as! Int
        }
    }
    
    @IBAction func buttonNigate(_ sender: Any) {
        self.performSegue(withIdentifier: "toLearn", sender: 1)
    }
    
    @IBAction func buttonPractice(_ sender: Any) {
        self.performSegue(withIdentifier: "toPractice", sender: nil)
    }
    
}

