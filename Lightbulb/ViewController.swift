//
//  ViewController.swift
//  Lightbulb
//
//  Created by Thwin Htoo Aung on 18/6/2569 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    

    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet weak var lightBulb: UIImageView!
    
    @IBOutlet weak var lightLabel: UILabel!
    
    @IBOutlet weak var greetingLabel: UILabel!
    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func actionButtonPressed(_ sender: Any) {
        lightOn.toggle()
        changeLight()
    }
    fileprivate func changeLight() {
        if lightOn{
            lightBulb.tintColor = .yellow
            lightLabel.text = "Light is ON"
            lightLabel.textColor = .white
            view.backgroundColor = .black
            greetingLabel.text = "Hello \(textField.text!)"
            greetingLabel.textColor = .yellow
        }else{
            lightBulb.tintColor = .black
            lightLabel.text = "Light is OFF"
            view.backgroundColor = .white
            greetingLabel.text = "Hello \(textField.text!)"
            greetingLabel.textColor = .yellow
        }
    }


}

