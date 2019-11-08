//
//  Work1TableViewCell.swift
//  resumeApplication
//
//  Created by Josefin Lindvall on 2019-11-01.
//  Copyright © 2019 JosefinLindvall. All rights reserved.
//

import UIKit

class Work1TableViewCell: UITableViewCell
{
    //MARK: Properties

    
    @IBOutlet weak var nameOfWorkLabel: UILabel!
    
    @IBOutlet weak var dateForWorkLabel: UILabel!
    @IBOutlet weak var imageOfWork: UIImageView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
