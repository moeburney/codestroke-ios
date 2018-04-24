//
//  MedicPatientDetailsViewController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import UIKit

class MedicPatientDetailsViewController: UIViewController {

    @IBAction func firstNameEdited(_ sender: UITextField) {
        print(sender.text)
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
    }
    @IBAction func nokEdited(_ sender: Any) {
    }
    @IBAction func nokContactEdited(_ sender: UITextField) {
    }
    @IBAction func medicareNumberEdited(_ sender: UITextField) {
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
