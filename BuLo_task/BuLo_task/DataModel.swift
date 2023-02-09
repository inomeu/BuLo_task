//
//  DataModel.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/04.
//

import Foundation
import UIKit
import CoreLocation

class DataEnterView: ObservableObject {
    
    func DateEnter() {
        let url = URL(string: "https://api.kantacky.com/muji/store")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.allHTTPHeaderFields = ["AccessToken": ""]
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            do {
                let object = try JSONSerialization.jsonObject(with: data,options: []) as! [Any]
                print(object)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}

