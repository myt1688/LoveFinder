
//  ViewController.swift
//  LoveFinder
//
//  Created by yutaoma on 2017/8/30.
//  Copyright © 2017年 yutaoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var heightNumber: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var hasProperty: UISwitch!
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        name.resignFirstResponder()
    }
    @IBAction func closeKeyboard(_ sender: Any) {
        name.resignFirstResponder()
    }
    
    @IBAction func heightChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let i = Int(slider.value)
        height.text = "\(i)cm"
    }

    @IBAction func okTappped(_ sender: Any) {
        let gendertext = gender.selectedSegmentIndex == 0 ? "Male" : "Female"
        
        //get the age
        let now =  NSDate() //get the current time
        let gregorian = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let components = gregorian?.components([.year], from: birthday.date, to: now as Date, options: NSCalendar.Options(rawValue: 0))
        let age = components?.year
        
        let hasPropertyText = hasProperty.isOn ? "yes" : "no"
        
        result.text = "name: \(name.text!) , gender: \(gendertext), age: \(age!), height: \(height.text!), has property:\(hasPropertyText)"
        
        
    }
}






