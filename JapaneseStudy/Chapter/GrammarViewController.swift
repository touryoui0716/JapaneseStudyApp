//
//  GrammarViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/24.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class GrammarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    let presenter = GrammarPresenter()
    
    
    var version = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.TODO.count
    }
    
    //セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = presenter.TODO[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetail", sender: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"  {
            let nextVC = segue.destination as! DetailsViewController
            nextVC.rowChange = sender as! Int
            nextVC.version = version
        }
    }
    
    
    
    
    
}
