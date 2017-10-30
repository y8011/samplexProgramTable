//
//  ViewController.swift
//  samplexProgramTable
//
//  Created by yuka on 30/10/2017.
//  Copyright © 2017 yuka. All rights reserved.
//

import UIKit

//1.プロトコルの設定
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
   
   var proArray = ["C言語","Swift","PHP","Javascript","Ruby","Java",
                   "Python"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //2.行数の設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (proArray.count + 1)
    }
    
    //3.リストに表示する文字列
    //indexPath 行番号とかいろいろ入っている　セルを指定する時によく使う
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //文字列を表示するせるの取得（セルの再利用)
        // tableView cellの使い分け。今回はindexPath.rowでやってみたけれど、セクションで分ける手もあるかも
        switch indexPath.row {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cellko", for: indexPath)
            cell1.textLabel?.text = "プログラム配列の表示"
            cell1.textLabel?.textColor = UIColor.red
            return cell1
        default:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cellta", for: indexPath)
            cell1.textLabel?.text = proArray[indexPath.row - 1]
            cell1.textLabel?.textColor = UIColor.brown
            return cell1
        } 
        
        //return cell1  ここでまとめてできなかった。SWitch文で切り替えてるからと思われる
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

