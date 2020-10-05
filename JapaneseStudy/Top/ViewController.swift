//
//  ViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/24.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // BGM用のaudioPlayer
    var audioPlayer1: AVAudioPlayer!
    // ボタンの効果音用のaudioPlayer
    var audioPlayer2: AVAudioPlayer!
    
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
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        play1Sound(name: "Moonligt")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        stop1Sound()
    }
    
    @IBAction func buttonLearn(_ sender: Any) {
        self.performSegue(withIdentifier: "toLearn", sender: 0)
        stop1Sound()
        play2Sound(name: "decision")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLearn"  {
            let nextVC = segue.destination as! GrammarViewController
            nextVC.version = sender as! Int
        }
    }
    
    @IBAction func buttonNigate(_ sender: Any) {
        self.performSegue(withIdentifier: "toLearn", sender: 1)
        play2Sound(name: "decision")
    }
    
    @IBAction func buttonPractice(_ sender: Any) {
        self.performSegue(withIdentifier: "toPractice", sender: nil)
        play2Sound(name: "decision")
    }
    
}

extension ViewController: AVAudioPlayerDelegate {
    func play1Sound(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer1.delegate = self
            audioPlayer1.play()
        } catch {
        }
    }
    
    func stop1Sound() {
        audioPlayer1.stop()
    }
    
    func play2Sound(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer2.delegate = self
            audioPlayer2.play()
        } catch {
        }
    }
    
    func stop2Sound() {
        audioPlayer2.stop()
    }
}
