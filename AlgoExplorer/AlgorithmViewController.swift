//
//  AlgorithmViewController.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/31/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var object : AlgorithmData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isEditable = false
        
        object = AlgorithmData.createData(info: information)[indexToUse]
        textView.text = object.algorithm
        textView.clipsToBounds = true
        textView.layer.cornerRadius = 10.0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.parent?.navigationItem.title = "Algorithm"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
