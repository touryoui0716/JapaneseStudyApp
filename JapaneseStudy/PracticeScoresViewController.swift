//
//  PracticeScoresViewController.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/09/09.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import UIKit
import Charts

class PracticeScoresViewController: UIViewController {
    
    @IBOutlet weak var pieChartsView: PieChartView!
    
    var grade = ""
    var comment = ""
    var point: Int = 0
    
    @IBOutlet weak var gradeLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradeLabel.text = grade
        commentLabel.text = comment
        pieChartsView.centerText = "正答率グラフ"
        
        var dataEntries: [PieChartDataEntry]
        if point == 0 {
            dataEntries = [PieChartDataEntry(value: 100, label: "不正解")]
            
        } else if point == 100 {
            dataEntries = [
                PieChartDataEntry(value: 100, label: "正解"),
            ]
        } else {
            dataEntries = [
                PieChartDataEntry(value: Double(point), label: "正解"),
                PieChartDataEntry(value: Double(100 - point), label: "不正解"),
            ]
        }
        
        let dataSet = PieChartDataSet(entries: dataEntries, label: "正答率")
        
        // グラフの色
        dataSet.colors = ChartColorTemplates.vordiplom()
        // グラフのデータの値の色
        dataSet.valueTextColor = UIColor.black
        // グラフのデータのタイトルの色
        dataSet.entryLabelColor = UIColor.black
        
        self.pieChartsView.data = PieChartData(dataSet: dataSet)
        
        // データを％表示にする
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 2
        formatter.multiplier = 1.0
        self.pieChartsView.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
        self.pieChartsView.usePercentValuesEnabled = true
        
        view.addSubview(self.pieChartsView)
        
        
    }
    
    
    
     
    
}
