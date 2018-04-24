//
//  MedicPatientAssessmentViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientAssessmentViewController: UIViewController {

    @IBAction func cannulaEdited(_ sender: UISegmentedControl) {
        var hasCannula = true
        if sender.selectedSegmentIndex == 0 {
            hasCannula = true
        }
        else {
            hasCannula = false
        }
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let d = [
            "hasCannula":hasCannula
        ]
        
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        
        sendPatientData(data: appDelegate.patientData)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
