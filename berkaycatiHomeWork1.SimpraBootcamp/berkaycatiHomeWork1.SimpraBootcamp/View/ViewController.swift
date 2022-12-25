//
//  ViewController.swift
//  berkaycatiHomeWork1.SimpraBootcamp
//
//  Created by Berkay on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {
 
    // defining the labels that we gonna change
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    var dataDelegate: DataTransferDelegate?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    // button that leads us to secondVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as? secondViewController
            destinationVC?.delegate = self
        }
    }
    
    @IBAction func toSecondVCClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    
}


extension ViewController: DataTransferDelegate {
    
    func dataTransfer(_ text: String, _ text2: String, _ text3: String) {
        nameLabel.text = text
        mailLabel.text = text2
        colorLabel.text = text3
    }
}
