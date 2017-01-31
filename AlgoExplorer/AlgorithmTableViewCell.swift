//
//  AlgorithmTableViewCell.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/30/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import UIKit

class AlgorithmTableViewCell: UITableViewCell {

    @IBOutlet weak var mainImage : UIImageView!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var bestCase : UILabel!
    @IBOutlet weak var worstCase : UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
