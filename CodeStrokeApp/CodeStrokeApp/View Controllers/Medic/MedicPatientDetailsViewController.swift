//
//  MedicPatientDetailsViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientDetailsViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var lastSeenWell: UILabel!
    @IBOutlet weak var weight: UITextField!
    
    @IBAction func firstNameEdited(_ sender: UITextField) {
    }
    @IBAction func lastNameEdited(_ sender: Any) {
    }
    @IBAction func dobEdited(_ sender: Any) {
    }
    @IBAction func genderEdited(_ sender: Any) {
    }
    @IBAction func addressEdited(_ sender: UITextField) {
    }
    @IBAction func weightEdited(_ sender: UITextField) {
    }
    @IBAction func contactEdited(_ sender: UITextField) {
        let d = [
            "contact":sender.text
            ] as [String : Any]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    @IBAction func nokEdited(_ sender: Any) {
        let d = [
            "nok":(sender as! UITextField).text
            ] as [String : Any]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    
    @IBAction func nokContactEdited(_ sender: UITextField) {
        let d = [
            "nokContact":sender.text
            ] as [String : Any]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    @IBAction func medicareNumberEdited(_ sender: UITextField) {
        let d = [
            "medicareNumber":sender.text
            ] as [String : Any]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        var p = appDelegate.patientData
        if p.keys.contains("firstName") {
            firstName.text = p["firstName"] as! String
        }
        if p.keys.contains("lastName") {
            lastName.text = p["lastName"] as! String
        }
        if p.keys.contains("dob") {
            dob.text = p["dob"] as! String
        }
        if p.keys.contains("gender") {
            gender.selectedSegmentIndex = p["gender"] as! Int
        }
        if p.keys.contains("lastSeenWell") {
            lastSeenWell.text = p["lastSeenWell"] as! String
        }
        if p.keys.contains("weight") {
            weight.text = p["weight"] as! String
        }
        if p.keys.contains("location") {
            location.text = p["location"] as! String
        }
        if p.keys.contains("address") {
            address.text = p["address"] as! String
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
