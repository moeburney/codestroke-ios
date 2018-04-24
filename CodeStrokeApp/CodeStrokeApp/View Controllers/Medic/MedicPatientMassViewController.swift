//
//  MedicPatientMassViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientMassViewController: UIViewController {
    @IBOutlet weak var facialDroop: UISwitch!
    @IBOutlet weak var armDrift: UISwitch!
    @IBOutlet weak var weakGrip: UISwitch!
    @IBOutlet weak var speechDifficulty: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func donePressed(_ sender: UIButton) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let d = [
            "facialDroop":facialDroop.isOn,
            "armDrift":armDrift.isOn,
            "weakGrip":weakGrip.isOn,
            "speechDifficulty":speechDifficulty.isOn
        ]
        
        d.forEach { (k,v) in appDelegate.patientData[k] = v }
        sendPatientData(data: appDelegate.patientData)
        self.dismiss(animated: false, completion: nil)
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
