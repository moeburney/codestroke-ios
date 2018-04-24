//
//  MedicPatientRaceScoreViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientRaceScoreViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3;
    }
    
    @IBOutlet weak var facialPalsyRaceScore: UIPickerView!
    @IBOutlet weak var armMotorRaceScore: UIPickerView!
    @IBOutlet weak var legMotorRaceScore: UIPickerView!
    @IBOutlet weak var headAndGazeRaceScore: UIPickerView!
    @IBOutlet weak var hemiparesis: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        facialPalsyRaceScore.delegate = self
        facialPalsyRaceScore.dataSource = self
        
        armMotorRaceScore.delegate = self
        armMotorRaceScore.dataSource = self

        legMotorRaceScore.delegate = self
        legMotorRaceScore.dataSource = self
        
        headAndGazeRaceScore.delegate = self
        headAndGazeRaceScore.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
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
