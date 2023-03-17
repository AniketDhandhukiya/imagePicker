//
//  navigateToPage.swift
//  tableviewday-3
//
//  Created by R & W on 09/02/23.
//

import UIKit

class navigateToPage: UIViewController {

    @IBOutlet weak var imageviw: UIImageView!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb1: UILabel!
    var carCompany = String()
    var carName = String()
    var imagePhoto = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        lb1.text = carCompany
        lb2.text = carName
        imageviw.image = imagePhoto
        

        
    }
    

    
}
