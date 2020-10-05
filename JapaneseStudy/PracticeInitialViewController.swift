//
//  PracticeInitialViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/09/06.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeInitialViewController: UIViewController {
    
    var labelContents = ["パートIの練習問題を始めよう", "パートIIの練習問題を始めよう"]
    var partion = 0
    var numberOfPractice = 0
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var beginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewLabel.text = labelContents[partion]
        let rgba = UIColor(red: 255/255, green: 128/255, blue: 168/255, alpha: 1.0) // ボタン背景色設定
        beginButton.backgroundColor = rgba
        
        // 背景色
        
        beginButton.layer.borderWidth = 0.5 // 枠線の幅
        
        beginButton.layer.borderColor = UIColor.black.cgColor// 枠線の色
        beginButton.layer.cornerRadius = 5.0 // 角丸のサイズ
        beginButton.setTitleColor(UIColor.white, for: UIControl.State.normal)

        
    }
    
    @IBAction func beginButtonTap(_ sender: Any) {
        self.performSegue(withIdentifier: "toPractice", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPractice"  {
            let nextVC = segue.destination as! PracticeWorkViewController
            nextVC.partion = partion
            nextVC.numberOfPractice = numberOfPractice
        }
    }
    

    

}
