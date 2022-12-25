//
//  secondViewController.swift
//  berkaycatiHomeWork1.SimpraBootcamp
//
//  Created by Berkay on 22.12.2022.
//

import UIKit

class secondViewController: UIViewController, DataTransferDelegate {
    
    func dataTransfer(_ text: String, _ text2: String, _ text3: String) {
        
    }
    
    
    
    // defining the textfields, button and matches here
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var nameText: String?
    var delegate: DataTransferDelegate?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    // combining the button
    @IBAction func saveButtonClicked(_ sender: Any) {
      
        delegate?.dataTransfer(nameTextField.text!, mailTextField.text!, colorTextField.text!)
        dismiss(animated: true)

    }
    
    


}
