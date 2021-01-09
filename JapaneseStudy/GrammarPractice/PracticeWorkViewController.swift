//
//  PracticeWorkViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/29.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeWorkViewController: UIViewController {
    
    var questionData = [[String: String]]()
    let presenter = PracticePresenter()
    var partion = 0
    var practiceNumber = 0
    var i = 0
    var point = 0
    var percent = ""
    var comment = ""
    var timer : Timer?
    var seconds = 0
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var timeCount: UILabel!
    
    @IBOutlet weak var buttonA: UIButton!
    
    @IBOutlet weak var buttonB: UIButton!
    
    @IBOutlet weak var buttonC: UIButton!
    
    @IBOutlet weak var buttonD: UIButton!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var timerWork: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerWork.layer.borderColor = UIColor.blue.cgColor
        if practiceNumber == 0 {
            if partion == 0 {
                questionData = presenter.questionDataPatternA
            } else if partion == 1 {
                questionData = presenter.questionDataPatternB
            }
        }
        indicator.startAnimating()
        resultLabel.text = ""
        indicator.isHidden = true
        optionSet()
        timerStart()
    }
    
    func timerStart() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PracticeWorkViewController.timerUpdate), userInfo: nil, repeats: true)
    }
    
    func optionSet() {
        seconds = 0
        question.text = questionData[i]["mondai"]
        question.numberOfLines = 0
        buttonA.setTitle(questionData[i]["answerA"], for: .normal)
        buttonB.setTitle(questionData[i]["answerB"], for: .normal)
        buttonC.setTitle(questionData[i]["answerC"], for: .normal)
        buttonD.setTitle(questionData[i]["answerD"], for: .normal)
        
    }
    
    func showGrade() {
        percent = "正解率：" + String(point*100/questionData.count)+"%"
        if point*100/questionData.count == 100 {
            comment = "Excellent"
        } else if (point*100/questionData.count >= 90) && (point*100/questionData.count < 100) {
            comment = "Great"
        } else if (point*100/questionData.count >= 80) && (point*100/questionData.count < 90) {
            comment = "Good"
        } else if (point*100/questionData.count >= 60) && (point*100/questionData.count < 80) {
            comment = "Normal"
        } else {
            comment = "Poor"
        }
    }
    
    func questionDoProcess() {
        timer?.invalidate()
        timeCount.text = ""
        if i < questionData.count {
            optionSet()
            timerStart()
        
        } else {
            timeCount.text = ""
            showGrade()
            performSegue(withIdentifier: "toResult", sender: nil)
        }
    }
    
    func tap(select: String?) {
        if select == questionData[i]["seikai"] {
            resultLabel.text = "正確"
            point = point + 1
        } else {
            resultLabel.text = "間違った"
        }
        i += 1
        indicator.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.resultLabel.text = ""
            self.timeCount.text = "10"
            self.questionDoProcess()
            self.indicator.isHidden = true
        }
    }
    
    @objc func timerUpdate() {
        seconds += 1
        if seconds < 10 {
            timeCount.text = String(10-seconds)
        } else {
            i += 1
            questionDoProcess()
            indicator.isHidden = true
        }
    }
    
    @IBAction func tapA(_ sender: Any) {
        tap(select: self.buttonA.currentTitle)
        
    }
    
    @IBAction func tapB(_ sender: Any) {
        tap(select: self.buttonB.currentTitle)
    }
    
    @IBAction func tapC(_ sender: Any) {
        tap(select: self.buttonC.currentTitle)
    }
    
    @IBAction func tapD(_ sender: Any) {
        tap(select: self.buttonD.currentTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let secondViewController = segue.destination as! PracticeScoresViewController
            secondViewController.grade = String(percent)
            secondViewController.comment = String(comment)
            secondViewController.point = point*100/questionData.count
        }
    }
    
}
