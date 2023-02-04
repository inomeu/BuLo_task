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
        
        let url = URL(string: "https://api.kantacky.com/auth/user")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
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
