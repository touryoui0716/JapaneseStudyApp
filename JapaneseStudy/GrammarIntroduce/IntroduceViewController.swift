//
//  IntroduceViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/26.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit
import NCMB

class IntroduceViewController: UIViewController {
    var grammarTitle = ("", 0, 0)
   
    let presenter = IntroducePresenter()
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var buttonTap1: UIButton!
    
    @IBOutlet weak var buttonTap2: UIButton!
    
    @IBOutlet weak var buttonTap3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = grammarTitle.0
        label1.numberOfLines = 0
        label2.text = ""
        label2.numberOfLines = 0
        label3.text = ""
        label3.numberOfLines = 0
        label4.text = ""
        label4.numberOfLines = 0
        let rgba = UIColor(red: 255/255, green: 128/255, blue: 168/255, alpha: 1.0) // ボタン背景色設定
        buttonTap1.backgroundColor = rgba
        buttonTap2.backgroundColor = rgba
        buttonTap3.backgroundColor = rgba
        // 背景色
        
        buttonTap1.layer.borderWidth = 0.5
        buttonTap2.layer.borderWidth = 0.5
        buttonTap3.layer.borderWidth = 0.5 // 枠線の幅
        
        buttonTap1.layer.borderColor = UIColor.black.cgColor
        buttonTap2.layer.borderColor = UIColor.black.cgColor
        buttonTap3.layer.borderColor = UIColor.black.cgColor// 枠線の色
        buttonTap1.layer.cornerRadius = 5.0
        buttonTap2.layer.cornerRadius = 5.0
        buttonTap3.layer.cornerRadius = 5.0 // 角丸のサイズ
        buttonTap1.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonTap2.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonTap3.setTitleColor(UIColor.white, for: UIControl.State.normal)
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nigate(_ sender: Any) {
        
//        var daTa = UserDefaults.standard.array(forKey: String(grammarTitle.1)) as? [Int]
//        if daTa == nil {
//            UserDefaults.standard.set([grammarTitle.2], forKey: String(grammarTitle.1))
//        } else {
//            if !(daTa?.contains(grammarTitle.2))! {
//                daTa?.append(grammarTitle.2)
//                UserDefaults.standard.set(daTa, forKey: String(grammarTitle.1))
//            }
//        }
        presenter.nigate(grammarTitle: grammarTitle)
        
    }
    
    @IBAction func buttonSetsuzoku(_ sender: Any) {
        label2.text = presenter.grammarDetail[grammarTitle.0]?[0]
        
        

       
        
    }
    
    @IBAction func buttonImi(_ sender: Any) {
        label3.text = presenter.grammarDetail[grammarTitle.0]?[1]
    }
    
    @IBAction func buttonReibun(_ sender: Any) {
        label4.text = presenter.grammarDetail[grammarTitle.0]?[2]
    }
    

    
}
