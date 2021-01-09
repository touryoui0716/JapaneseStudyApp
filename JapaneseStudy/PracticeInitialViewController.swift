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
    var practiceNumber = 0
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var beginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewLabel.text = labelContents[partion]
        let rgba = UIColor(red: 255/255, green: 128/255, blue: 168/255, alpha: 1.0)
        beginButton.backgroundColor = rgba
        beginButton.layer.borderWidth = 0.5
        beginButton.layer.borderColor = UIColor.black.cgColor
        beginButton.layer.cornerRadius = 5.0
        beginButton.setTitleColor(UIColor.white, for: UIControl.State.normal)

    }
    
    @IBAction func beginButtonTap(_ sender: Any) {
        self.performSegue(withIdentifier: "toPractice", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPractice"  {
            let nextVC = segue.destination as! PracticeWorkViewController
            nextVC.partion = partion
            nextVC.practiceNumber = practiceNumber
        }
    }
    
}
