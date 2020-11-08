//  ViewController.swift
//  KelltonTask
//  Created by Ranjeet Raushan on 05/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit
import  Foundation

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    var result : Result?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return result?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = result?.data?[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableView", for: indexPath) as! tableViewCell
        cell.label1.text = model?.label
        cell.label1.textColor = UIColor.red
        cell.label2.text = model?.labelDetail
        cell.label2.textColor = UIColor.blue
        return cell
    }
    // save and parse the json using local json file
    func parseJSON(){
        guard let path = Bundle.main.path(
            forResource: "kellton",
            ofType: "json"
            ) else{
                return
        }
        let url = URL(fileURLWithPath: path)
        do{
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
        }
        catch{
            print("Error:\(error)")
        }
    }
}
 
// Task:

/*
 
 How to save and parse the json using local json file & also implement table view .
 */
