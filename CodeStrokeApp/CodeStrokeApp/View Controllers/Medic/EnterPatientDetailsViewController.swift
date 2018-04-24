//
//  EnterPatientDetailsViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class EnterPatientDetailsViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var lastSeenWell: UIDatePicker!
    @IBOutlet weak var weight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.clinicianLoggedIn = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startCase(_ sender: Any) {
        var gender1 = ""
        if gender.selectedSegmentIndex == 0 {
            gender1 = "male"
        }
        else {
            gender1 = "female"
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let lastSeenWellString = formatter.string(from: lastSeenWell.date)
      
        let d = [
                "firstName":firstName.text,
                "lastName":lastName.text,
                "dob":dob.text,
                "gender":gender1,
                "location":location.text,
                "address":address.text,
                "lastSeenWell":lastSeenWellString,
                "weight":weight.text
            ] as [String : Any]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
        sendBroadcast(data: ["contents":["en":"New Patient"], "data":["h":"H"]])
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
