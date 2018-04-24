//
//  MedicPatientHistoryViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientHistoryViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var pastMedicalHistory: UITextView!
    @IBOutlet weak var medications: UITextView!
    @IBOutlet weak var hopc: UITextView!
    @IBAction func anticoagulantsEdited(_ sender: UISegmentedControl) {
        var hasAntiCoagulant = true
        if sender.selectedSegmentIndex == 0 {
            hasAntiCoagulant = true
        }
        else {
            hasAntiCoagulant = false
        }
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let d = [
            "hasAntiCoagulant":hasAntiCoagulant
        ]
        
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    
    @IBAction func anticoagulantLastDoseEdited(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let anticoagulantLastDose = formatter.string(from: sender.date)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let d = [
            "anticoagulantLastDose":anticoagulantLastDose
        ]
        
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        sendPatientData(data: appDelegate.patientData)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pastMedicalHistory.delegate = self
        medications.delegate = self
        hopc.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let d = [
            "pastMedicalHistory":pastMedicalHistory.text,
            "medications":medications.text,
            "hopc":hopc.text
        ]
            
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
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
