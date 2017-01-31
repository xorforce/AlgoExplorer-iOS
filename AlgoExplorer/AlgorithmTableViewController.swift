
//
//  AlgorithmTableViewController.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/29/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit

var information : Int!

class AlgorithmTableViewController: UITableViewController {

    var info : Int!
    var data = [AlgorithmData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = AlgorithmData.createData(info: info)
        dataSetup()
        
        tableView.tableFooterView = UIView()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! AlgorithmTableViewCell
        cell.name.text = data[indexPath.row].name
        let imageView = UIImage(named: "\(data[indexPath.row].viewPhoto!)")
        cell.mainImage.image = imageView
        cell.bestCase.text = "Best Case : \(data[indexPath.row].bestCase!)"
        cell.worstCase.text = "Worst Case : \(data[indexPath.row].worstCase!)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexToUse = indexPath.row
    }
    
    func dataSetup(){
        switch info{
        case 0:
            title = "Sorting"
        case 1:
            title = "Searching"
        case 2:
            title = "Dynamic Programming"
        case 3:
            title = "Graphs"
        default : title = "Algorithm Explorer"
        }
        
        information = info
    }
}
