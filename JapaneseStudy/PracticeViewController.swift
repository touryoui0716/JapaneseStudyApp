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

   override func viewDidLoad() {
       super.viewDidLoad()
   }


   override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
   }

   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return practice.count
   }

   
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
    

    

}
