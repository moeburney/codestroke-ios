//
//  ClinicianPatientDetailsViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class ClinicianPatientDetailsViewController: UIViewController {
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var dob: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var lastSeenWell: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var timeOfPickup: UILabel!
    @IBOutlet weak var nok: UILabel!
    @IBOutlet weak var nokContact: UILabel!
    @IBOutlet weak var medicare: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getPatientData { (json, err) in
            if (json != nil) {
                DispatchQueue.main.async {
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.patientData = json!
                    let p = appDelegate.patientData
                    if p.keys.contains("firstName") {
                        self.firstName.text = p["firstName"] as! String
                    }
                    if p.keys.contains("lastName") {
                        self.lastName.text = p["lastName"] as! String
                    }
                    if p.keys.contains("dob") {
                        self.dob.text = p["dob"] as! String
                    }
                    if p.keys.contains("gender") {
                        if p["gender"] as! Int == 0 {
                            self.gender.text = "Male"
                        }
                        else {
                            self.gender.text = "Female"
                        }
                    }
                    if p.keys.contains("lastSeenWell") {
                        self.lastSeenWell.text = p["lastSeenWell"] as! String
                    }
                    if p.keys.contains("weight") {
                        self.weight.text = p["weight"] as! String
                    }
                    if p.keys.contains("location") {
                        self.location.text = p["location"] as! String
                    }
                }

            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
