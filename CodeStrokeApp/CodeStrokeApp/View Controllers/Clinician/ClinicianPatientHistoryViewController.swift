//
//  ClinicianPatientHistoryViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class ClinicianPatientHistoryViewController: UIViewController {

    @IBOutlet weak var medicalHistory: UILabel!
    @IBOutlet weak var medications: UILabel!
    @IBOutlet weak var anticoagulants: UILabel!
    @IBOutlet weak var lastDose: UILabel!
    @IBOutlet weak var hopc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getPatientData { (json, err) in
            if (json != nil) {
                DispatchQueue.main.async {
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.patientData = json!
                    let p = appDelegate.patientData
                    if p.keys.contains("pastMedicalHistory") {
                        self.medicalHistory.text = p["pastMedicalHistory"] as! String
                    }
                    if p.keys.contains("medications") {
                        self.medications.text = p["medications"] as! String
                    }
                    if p.keys.contains("hopc") {
                        self.hopc.text = p["hopc"] as! String
                    }
                    if p.keys.contains("anticoagulantLastDose") {
                        self.lastDose.text = p["anticoagulantLastDose"] as! String
                    }
                    
                    if p.keys.contains("hasAntiCoagulant") {
                        if (p["hasAntiCoagulant"] as! Bool) {
                            self.anticoagulants.text = "Yes" 
                        }
                        else {
                            self.anticoagulants.text = "No"
                        }
                    }
                }
                
            }
        }    }

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
