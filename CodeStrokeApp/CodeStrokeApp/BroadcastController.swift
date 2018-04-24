//
//  BroadcastController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import Foundation


func sendPatientData(data:[String:Any]) -> Void {
    let jsonData = try! JSONSerialization.data(withJSONObject: data)
    
    if !jsonData.isEmpty {
        var request = URLRequest(url: URL(string:"http://codestroke.pythonanywhere.com/patients")!)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.getAllTasks { (openTasks: [URLSessionTask]) in
            NSLog("open tasks: \(openTasks)")
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (responseData: Data?, response: URLResponse?, error: Error?) in
            //
        })
        task.resume()
    }
}

func getPatientData(callback:@escaping (_ data:[String:Any]?, _ error:Error?) -> Void) {
    var request = URLRequest(url: URL(string:"http://codestroke.pythonanywhere.com/patients")!)
    request.httpMethod = "GET"
    let config = URLSessionConfiguration.default
    let session = URLSession(configuration: config)
    
    let task = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
        guard let data = data, error == nil else { return }
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
            callback(json, nil)
        } catch let error as NSError {
            callback(nil, error)
        }
    })
    task.resume()
}

func sendBroadcast(data:[String:Any]) -> Void {
    let jsonData = try! JSONSerialization.data(withJSONObject: data)

    if !jsonData.isEmpty {
        var request = URLRequest(url: URL(string:"http://codestroke.pythonanywhere.com/broadcasts")!)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        
        URLSession.shared.getAllTasks { (openTasks: [URLSessionTask]) in
            NSLog("open tasks: \(openTasks)")
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (responseData: Data?, response: URLResponse?, error: Error?) in
            //
        })
        task.resume()
    }
}
