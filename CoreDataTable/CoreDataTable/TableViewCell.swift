//
//  TableViewCell.swift
//  CoreDataTable
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   // @IBOutlet weak var menuview: UIView!
   
    //@IBOutlet weak var viewleadcons: NSLayoutConstraint!
    
    @IBOutlet weak var olblTitle: UILabel!
    @IBOutlet weak var lblDisc: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
