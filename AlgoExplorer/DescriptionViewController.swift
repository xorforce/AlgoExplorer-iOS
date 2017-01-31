//
//  DescriptionViewController.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/31/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit
import FLAnimatedImage


class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var gifView: FLAnimatedImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var bestLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var worstLabel: UILabel!
    @IBOutlet weak var spaceLabel: UILabel!
    
    var object : AlgorithmData!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        object = AlgorithmData.createData(info: information)[indexToUse]
        setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.parent?.navigationItem.title = "Description"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidLayoutSubviews() {
        self.textView.setContentOffset(CGPoint.zero, animated: false)
    }
    
    func setupUI(){
        
        let fileToDisplay : String! = object.mainPhoto
        if object.hasGif == true{
            let path : String = Bundle.main.path(forResource: fileToDisplay, ofType: "gif")!
            let image = try? FLAnimatedImage(animatedGIFData: Data(contentsOf: URL(fileURLWithPath: path)))
            gifView.animatedImage = image
        }else{
            gifView.image = UIImage(named: fileToDisplay)
        }
        
        textView.text = object.description
        bestLabel.text = "Best Case Time : \(object.bestCase!)"
        averageLabel.text = "Average Case Time : \(object.avgCase!)"
        worstLabel.text = "Worst Case Time : \(object.worstCase!)"
        spaceLabel.text = "Space Complexity : \(object.spaceComplexity!)"
    }
    
}
