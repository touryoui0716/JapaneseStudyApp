//
//  PracticeWorkViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/29.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeWorkViewController: UIViewController {
    
    var questionData = [["mondai": "問題(1) お客様(    )商売だから、お客様を何より大切にしなければならない。", "answerA": "(A)  あるの　", "answerB": "(B)  あったの", "answerC": "(C)  のあって", "answerD": "(D)  あっての", "seikai": "(D)  あっての"],
                        ["mondai": "問題(2) 試験の結果(      )、クラスが変わるかもしれない。 ", "answerA": "(A)  いかんだ　", "answerB": "(B)  いかんの　", "answerC": "(C)  いかんに", "answerD": "(D)  いかんでは", "seikai": "(D)  いかんでは"],
                        ["mondai": "問題(3) この仕事が求めているのは顧客とのコミュニケーション能力(     ) ", "answerA": "(A)  いがいのなにものだ", "answerB": "(B)  いがいのなにものでもない", "answerC": "(C)  のいがいのそのものだ", "answerD": "(D)  でいがいのなにものだ", "seikai": "(B)  いがいのなにものでもない"],
                        ["mondai": "問題(4) 国籍のいかん(     )問わず、誰でも今回の新人賞に応援することができる。", "answerA": "(A)  に", "answerB": "(B)  は", "answerC": "(C)  を", "answerD": "(D)  で", "seikai": "(C)  を"],
                        ["mondai": "問題(5) (         )よっては、スケジュールを調整することもある。", "answerA": "(A)  天候がいかん", "answerB": "(B)  天候のいかん", "answerC": "(C)  天候のいかんに", "answerD": "(D)  天候のいかんで", "seikai": "(C)  天候のいかんに"]
        
    ]
    var partion = 0
    var numberOfPractice = 0
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
    
    @IBOutlet weak var timerWaku: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerWaku.layer.borderColor = UIColor.blue.cgColor
        
        if numberOfPractice == 0 {
            if partion == 0 {
                questionData = [["mondai": "問題(1) お客様(    )商売だから、お客様を何より大切にしなければならない。", "answerA": "(A)  あるの　", "answerB": "(B)  あったの", "answerC": "(C)  のあって", "answerD": "(D)  あっての", "seikai": "(D)  あっての"],
                                ["mondai": "問題(2) 試験の結果(      )、クラスが変わるかもしれない。 ", "answerA": "(A)  いかんだ　", "answerB": "(B)  いかんの　", "answerC": "(C)  いかんに", "answerD": "(D)  いかんでは", "seikai": "(D)  いかんでは"],
                                ["mondai": "問題(3) この仕事が求めているのは顧客とのコミュニケーション能力(     ) ", "answerA": "(A)  いがいのなにものだ", "answerB": "(B)  いがいのなにものでもない", "answerC": "(C)  のいがいのそのものだ", "answerD": "(D)  でいがいのなにものだ", "seikai": "(B)  いがいのなにものでもない"],
                                ["mondai": "問題(4) 国籍のいかん(     )問わず、誰でも今回の新人賞に応援することができる。", "answerA": "(A)  に", "answerB": "(B)  は", "answerC": "(C)  を", "answerD": "(D)  で", "seikai": "(C)  を"],
                                ["mondai": "問題(5) (         )よっては、スケジュールを調整することもある。", "answerA": "(A)  天候がいかん", "answerB": "(B)  天候のいかん", "answerC": "(C)  天候のいかんに", "answerD": "(D)  天候のいかんで", "seikai": "(C)  天候のいかんに"]
                    
                ]
            } else if partion == 1 {
                questionData = [["mondai": "問題(1) 連休中旅行に(          )、連休明けにはレポートを提出しなければならない。", "answerA": "(A)  行こうと行くまいが", "answerB": "(B)  行こうとも", "answerC": "(C)  行こうが行くまいが", "answerD": "(D)  行こうか行くまいか", "seikai": "(C)  行こうが行くまいが"],
                                ["mondai": "問題(2) 何度も繰り返し練習した動作も、(         )、緊張してうまく発揮できない。 ", "answerA": "(A)  いざ本番となると", "answerB": "(B)  いざ本番になっても", "answerC": "(C)  いざやるとき", "answerD": "(D)  いざやっても", "seikai": "(A)  いざ本番となると"],
                                ["mondai": "問題(3) 彼を今の苦境に陥れたのは不正取引(         )。", "answerA": "(A)  いがいのなにものでもない", "answerB": "(B)  いかんだ", "answerC": "(C)  あってのものだ", "answerD": "(D)  言わずもがなだ", "seikai": "(A)  いがいのなにものでもない"],
                                ["mondai": "問題(4) 両親に(         )もがなのことを言ってしまって、今でも後悔している。", "answerA": "(A)  言えず", "answerB": "(B)  言わず", "answerC": "(C)  言えない", "answerD": "(D)  言わない", "seikai": "(B)  言わず"],
                                ["mondai": "問題(5) たとえ皆に反対され(          )、自分の選んだ道に進みたい。", "answerA": "(A)  ながら", "answerB": "(B)  てから", "answerC": "(C)  かけては", "answerD": "(D)  ようとも", "seikai": "(D)  ようとも"]
                    
                ]
            }
            timerStart()
        }
        indicator.startAnimating()
        indicator.isHidden = true
        question.text = questionData[i]["mondai"]
        question.numberOfLines = 0
        resultLabel.text = ""
        buttonA.setTitle(questionData[i]["answerA"], for: .normal)
        buttonB.setTitle(questionData[i]["answerB"], for: .normal)
        buttonC.setTitle(questionData[i]["answerC"], for: .normal)
        buttonD.setTitle(questionData[i]["answerD"], for: .normal)
        
        
        // Do any additional setup after loading the view.
    }
    func timerStart() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PracticeWorkViewController.timerUpdate), userInfo: nil, repeats: true)
    }
    
    
    @objc func timerUpdate() {
        seconds+=1
        if seconds < 10 {
            timeCount.text = String(10-seconds)
        } else {
            self.timer?.invalidate()
            timeCount.text = ""
            i+=1
            if i < questionData.count {
                seconds = 0
                question.text = questionData[i]["mondai"]
                question.numberOfLines = 0
                buttonA.setTitle(questionData[i]["answerA"], for: .normal)
                buttonB.setTitle(questionData[i]["answerB"], for: .normal)
                buttonC.setTitle(questionData[i]["answerC"], for: .normal)
                buttonD.setTitle(questionData[i]["answerD"], for: .normal)
                timerStart()
            } else {
                timeCount.text = ""
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
                performSegue(withIdentifier: "toResult", sender: nil)
                
                
                //                self.percent = "正解率：" + String(self.point*100/self.questionData.count)
                
            }
            self.indicator.isHidden = true
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
    func tap(select: String?){
        if select == questionData[i]["seikai"]{
            
            resultLabel.text = "正確"
            point = point + 1
            
            
        }else{
            resultLabel.text = "間違った"
        }
        i+=1
        indicator.isHidden = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.timeCount.text = "10"
            self.seconds = 0
            // your code here
            self.timer?.invalidate()
            self.resultLabel.text = ""
            if self.i < self.questionData.count {
                self.question.text = self.questionData[self.i]["mondai"]
                self.question.numberOfLines = 0
                self.buttonA.setTitle(self.questionData[self.i]["answerA"], for: .normal)
                self.buttonB.setTitle(self.questionData[self.i]["answerB"], for: .normal)
                self.buttonC.setTitle(self.questionData[self.i]["answerC"], for: .normal)
                self.buttonD.setTitle(self.questionData[self.i]["answerD"], for: .normal)
                self.timerStart()
            } else {
                self.timeCount.text = ""
                self.percent = "正解率：" + String(self.point*100/self.questionData.count)+"%"
                if self.point*100/self.questionData.count == 100 {
                    self.comment = "Excellent"
                } else if (self.point*100/self.questionData.count >= 90) && (self.point*100/self.questionData.count < 100) {
                    self.comment = "Great"
                } else if (self.point*100/self.questionData.count >= 80) && (self.point*100/self.questionData.count < 90) {
                    self.comment = "Good"
                } else if (self.point*100/self.questionData.count >= 60) && (self.point*100/self.questionData.count < 80) {
                    self.comment = "Normal"
                } else {
                    self.comment = "Poor"
                }
                self.performSegue(withIdentifier: "toResult", sender: nil)
                
                
                //                self.percent = "正解率：" + String(self.point*100/self.questionData.count)
                
            }
            self.indicator.isHidden = true
            
        }
        
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let secondViewController = segue.destination as! PracticeScoresViewController
            secondViewController.grade = String(percent)
            secondViewController.comment = String(comment)
        }
    }
    
}
