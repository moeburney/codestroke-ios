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
    }
    
    @IBAction func anticoagulantLastDoseEdited(_ sender: UIDatePicker) {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
