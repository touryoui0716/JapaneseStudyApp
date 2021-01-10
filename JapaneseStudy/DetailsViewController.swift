//
//  DetailsViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/08/26.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var rowChange = 0
    var version = 0
    var grammar: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if rowChange == 0 {
            let nigateGrammar = ["〜あっての......", "〜いかんだ / いかんでは / 〜いかんによっては", "〜いかんにかかわらず / いかんによらず / いかんをとわず", "〜かたがた", "〜かたわら", "〜がてら", "〜かと思いきや", "〜が早いか", "〜からある / 〜からする / 〜からの", "〜かれ〜かれ"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa! {
                        grammar.append(nigateGrammar[i])
                    }
                }
                
            }
            
            
        }else if rowChange == 1 {
            let nigateGrammar = ["〜きっての", "〜きらいがある", "〜極まる / 〜極まりない", "〜ごとき / ごとく / ごとし", "〜こととて", "〜始末だ", "〜ずくめ", "〜ずにはおかない / 〜ないではおかない", "〜ずにはすまない / 〜ないではすまない", "〜術がない"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa! {
                        grammar.append(nigateGrammar[i])
                    }
                }
                
            }
            
            
        }else if rowChange == 2{
            let nigateGrammar = ["〜すら", "〜そばから", "ただ〜のみ", "〜たためしがない", "〜たところで", "〜だに", "〜だの〜だの", "〜た弾みに / 〜た拍子に", "〜た分だけ", "〜たまでだ / 〜たまでのことだ", "〜たら最後 / 〜たが最後", "〜たら〜たで", "〜たりとも〜ない", "〜たるもの"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa! {
                        grammar.append(nigateGrammar[i])
                    }
                }
                
            }
            
        }else if rowChange == 3{
            let nigateGrammar = ["〜尽くす", "〜つ〜つ", "〜であれ〜であれ", "〜てからというもの", "〜ではあるまいし / 〜でもあるまいし", "〜てまえ", "〜てやまない", "〜と相まって", "〜とあれば", "〜といい〜といい", "〜といえども", "〜というもの", "〜ときたら", "〜ところを", "〜とはいえ", "〜ともあろう", "〜ともなく/〜ともなしに", "〜ともなると / 〜ともなれば"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa! {
                        grammar.append(nigateGrammar[i])
                    }
                }
                
            }
            
        }else if rowChange == 4{
            let nigateGrammar = ["〜ながら", "〜なくしては", "〜なくもない", "〜なしに /  〜なしで", "〜ならでは", "〜ないまでも", "〜なり", "〜〜なりとも", "〜なり〜なり", "〜なりに"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa!{
                        grammar.append(nigateGrammar[i])
                    }
                }
                
                
                
            }
            
        }else if rowChange == 5{
            let nigateGrammar = ["〜にあって", "〜に至る / 〜に至るまで", "〜に言わせれば", "〜にかかっては / 〜にかかったら / 〜にかかると / 〜にかかれば", "〜に関わる", "〜に限ったことではない", "〜にかこつけて", "〜にかたくない", "〜にかまけて", "〜にして", "〜に忍びない", "〜に即して / 〜に則して", "〜に堪える / 〜に堪えない"]
            if version == 0 {
                grammar = nigateGrammar
            } else {
                let daTa = UserDefaults.standard.array(forKey: String(rowChange)) as? [Int]
                
                if daTa == nil {
                    grammar = ["苦手入れなし"]
                } else {
                    for i in daTa!{
                        grammar.append(nigateGrammar[i])
                    }
                }
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grammar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = grammar[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toIntroduce", sender: ("文型："+grammar[indexPath.row], rowChange, indexPath.row))
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIntroduce" {
            let secondViewController = segue.destination as! IntroduceViewController
            secondViewController.grammarTitle  = sender as! (String, Int, Int)
        }
    }
    
    
    
    
}
