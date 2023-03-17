//
//  TableViewCell2.swift
//  tableviewday-3
//
//  Created by R & W on 09/02/23.
//

import UIKit

class TableViewCell2: UITableViewCell {

    
    @IBOutlet weak var labelForCompanyName: UILabel!
    @IBOutlet weak var labelForCarName: UILabel!
    @IBOutlet weak var imageViewPhoto: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
