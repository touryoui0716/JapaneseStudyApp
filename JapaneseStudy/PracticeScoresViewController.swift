//
//  PracticeScoresViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/09/09.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeScoresViewController: UIViewController {
    
    var grade = ""
    var comment = ""
    
    @IBOutlet weak var gradeLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradeLabel.text = grade
        commentLabel.text = comment

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
