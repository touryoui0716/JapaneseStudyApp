//
//  PracticeContentsViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/09/06.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeContentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let partContents = ["パートI", "パートII"]
    var numberOfPractice = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partContents.count
    }

    //セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = partContents[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toInitial", sender: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
            
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInitial"  {
            let nextVC = segue.destination as! PracticeInitialViewController
            nextVC.partion = sender as! Int
            nextVC.numberOfPractice = numberOfPractice
        }
    }
    

    

}
