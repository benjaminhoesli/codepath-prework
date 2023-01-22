//
//  ViewController.swift
//  Pre-Work
//
//  Created by Benjamin Hoesli on 22.01.23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var schooltextfield: UITextField!
    @IBOutlet weak var yearsegmentcontrol: UISegmentedControl!
    
    @IBOutlet weak var morepetswitch: UISwitch!
    @IBOutlet weak var petstepper: UIStepper!
    @IBOutlet weak var numberofpetslabel: UILabel!
    
    @IBAction func Stepperaction(_ sender: UIStepper) {
        numberofpetslabel.text="\(Int(sender.value))"
    }
    
    @IBAction func introduceaction(_ sender: UIButton) {
        let year = yearsegmentcontrol.titleForSegment(at: yearsegmentcontrol.selectedSegmentIndex)
        let introduction = "Hey! I'm \(firstnametextfield.text!) \(lastnametextfield.text!). I go to \(schooltextfield.text!). I am in my \(year!) year and I own \(numberofpetslabel.text!) pets. It is \(morepetswitch.isOn) that I want more pets."
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

