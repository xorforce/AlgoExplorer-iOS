//
//  CodeViewController.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/31/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit
import Highlightr

class CodeViewController: UIViewController {
    
    @IBOutlet weak var viewPlaceholder: UIView!
    var object : AlgorithmData!
    
    var highlightr : Highlightr!
    let textStorage = CodeAttributedString()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        object = AlgorithmData.createData(info: information)[indexToUse]

        textStorage.language = "cpp"
        
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        
        let textContainer = NSTextContainer(size: view.bounds.size)
        layoutManager.addTextContainer(textContainer)
        
        let textView = UITextView(frame: viewPlaceholder.bounds, textContainer: textContainer)
        textView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        textView.isEditable = false
        textView.textColor = UIColor(white: 0.8, alpha: 1.0)
        textView.backgroundColor = UIColor(red: 17/255, green: 12/255, blue: 17/255, alpha: 1.0)
        viewPlaceholder.addSubview(textView)
        
        textView.text = object.program
        
        
        highlightr = textStorage.highlightr
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.parent?.navigationItem.title = "Code"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
