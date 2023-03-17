//
//  ViewController.swift
//  tableviewday-3
//
//  Created by R & W on 09/02/35.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    var carCompany = ["Hyundai","Mercedes","Tata","Mahindra","Suzuki","Kia"]
    var carName = ["Creta","E-class310","Nexon-EV","ScorpioN-line","Swift Dezire","Kia Seltose"]
    var imagePhoto = ["1","2","3","4","5","6"]
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carCompany.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell2
        cell.labelForCompanyName.text = carCompany[indexPath.row]
        cell.labelForCarName.text = carName[indexPath.row]
        cell.imageViewPhoto.image = UIImage(named: imagePhoto[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigate(company: carCompany[indexPath.row],name: carName[indexPath.row],image: imagePhoto[indexPath.row]!)
    }
    
    func navigate(company: String,name: String,image: UIImage){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "navigateToPage") as! navigateToPage
        navigation.carCompany = company
        navigation.carName = name
        navigation.imagePhoto = image
        navigationController?.pushViewController(navigation, animated: true)
    }

}

