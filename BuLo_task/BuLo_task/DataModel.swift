//
//  DataModel.swift
//  BuLo_task
//
//  Created by inoue mei on 2023/02/04.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.kantacky.com/muji/store")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.allHTTPHeaderFields = ["Token": "ZeVlaZVIy0O6FhVaJpH-PbjNlyz5ymdE4o18QS4FWzlKEDwhTqZ-jAiypaZ9DtcbEpQuBKXWyEr-FIEDQIRpm67JxWBgQhzmBh7loF_Umgnmf1dvq7W5TLKWdmXJrctFSWbEGxZ6oM3pA-eC8FfB5HrEPDuWFH1jXgXzcg6yjrwOjkCg-lBTUCiE-BY66YL-80A4ICa8r0mVvuFJnDXPbGq9B_MivNgzFSBP2n3PPPkg7ZgyrX4YNeGikK9rn0XT"]                
        //request.httpMethod = "POST"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            do {
                let object = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! [String: Any]
                //print(object)
                if let hoge = object["latitude"]{
                    print(hoge)
                if let hoge2 = object["longitude"]{
                    print(hoge2)
                    }
                }
            } catch let error {
                print (error)
            }
        }
        task.resume()
    }
}
