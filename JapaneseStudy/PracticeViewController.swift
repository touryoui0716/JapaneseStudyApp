//
//  PracticeViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/25.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class PracticeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    

   let practice = ["実践練習１", "実践練習２", "実践練習３", "実践練習４", "実践練習５"] //追加②

   //最初からあるコード
   override func viewDidLoad() {
       super.viewDidLoad()
   }

   //最初からあるコード
   override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
   }

   //追加③ セルの個数を指定するデリゲートメソッド（必須）
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return practice.count
   }

   //追加④ セルに値を設定するデータソースメソッド（必須）
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // セルを取得する
       let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       // セルに表示する値を設定する
       cell.textLabel!.text = practice[indexPath.row]
       return cell
   }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
       performSegue(withIdentifier: "toContents", sender: indexPath.row)
       tableView.deselectRow(at: indexPath, animated: true)
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "toContents" {
           let secondViewController = segue.destination as! PracticeContentsViewController
        secondViewController.numberOfPractice = sender as! Int
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

}
