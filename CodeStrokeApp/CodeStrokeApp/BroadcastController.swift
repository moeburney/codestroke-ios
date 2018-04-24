//
//  BroadcastController.swift
//  CodeStrokeApp
//
//  Created by Moe on 24/4/18.
//  Copyright © 2018 Code Stroke. All rights reserved.
//

import Foundation

func sendBroadcast(data:[String:Any]) -> Void {
    let jsonData = try! JSONSerialization.data(withJSONObject: data)

    if !jsonData.isEmpty {
        var request = URLRequest(url: URL(string:"http://127.0.0.1:5000/broadcasts")!)
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