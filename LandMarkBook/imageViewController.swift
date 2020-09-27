//
//  ImageViewController.swift
//  LandMarkBook
//
//  Created by Fatih KURT on 27.09.2020.
//

import UIKit

class ImageViewController: UIViewController {

    var selectedLandMarkName = ""
    var selectedLandMarkImage = UIImage()
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
         myLabel.text = selectedLandMarkName
        imageView.image =  selectedLandMarkImage
        
    }
    

    
}
