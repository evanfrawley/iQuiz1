//
//  TopicCell.swift
//  iQuiz1
//
//  Created by Evan on 5/4/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class TopicCell: UITableViewCell {

    

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var overview: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
