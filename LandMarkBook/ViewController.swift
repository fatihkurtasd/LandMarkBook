//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Fatih KURT on 27.09.2020.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var landmarknames = [String]()
    var landmarkImages = [UIImage]()
    var back = [UIImage]()
    var chosenLandMarkName=""
    var chosenLandMarkImage=UIImage()
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarknames.append("Colleseum")
        landmarknames.append("London Bridge")
        landmarknames.append("Paris")
        landmarknames.append("Pisa")
        landmarknames.append("Great Wall")
        landmarknames.append("Kremlin")
        landmarknames.append("Stonehenge")
        landmarknames.append("Taj Mahal")
        
        
        landmarkImages.append(UIImage(named: "coleseo.jpg")!)
        landmarkImages.append(UIImage(named: "londonbridge.jpg")!)
        landmarkImages.append(UIImage(named: "paris.jpg")!)
        landmarkImages.append(UIImage(named: "pisa.jpg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "tajmahal.jpg")!)
        
    }
    
   
    func tableView ( _ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexpath : IndexPath){
            if editingStyle == .delete{
                landmarknames.remove(at: indexpath.row)
                landmarkImages.remove(at: indexpath.row)
                tableView.deleteRows(at: [indexpath], with: UITableView.RowAnimation.fade)
            }
            
        }
        
        
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarknames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarknames.count
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandMarkName = landmarknames[indexPath.row]
        chosenLandMarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController"{
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedLandMarkImage = chosenLandMarkImage
            destinationVC.selectedLandMarkName = chosenLandMarkName
        }
    }

}

