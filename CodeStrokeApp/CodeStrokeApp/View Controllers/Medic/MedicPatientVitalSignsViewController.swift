//
//  MedicPatientVitalSignsViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientVitalSignsViewController: UIViewController {
    @IBOutlet weak var bloodPressure: UITextField!
    @IBOutlet weak var heartRate: UITextField!
    @IBOutlet weak var heartRateRegular: UISegmentedControl!
    @IBOutlet weak var respitoryRate: UITextField!
    @IBOutlet weak var oxygenSaturation: UITextField!
    
    @IBOutlet weak var temperature: UITextField!
    
    @IBOutlet weak var gcs: UITextField!
    @IBOutlet weak var bloodGlucose: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
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
