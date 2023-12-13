//
//  ViewController.swift
//  tableView
//
//  Created by Alvar Yussupov on 28/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelSurname: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var name = ""
    var surname = ""
    var imagename = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = name
        labelSurname.text = surname
        imageView.image = UIImage(named: imagename)
    }


}

