//
//  ViewController.swift
//  SunSet App
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Display: UILabel!
    @IBOutlet weak var EditText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buClick(_ sender: Any) {
        var st=EditText.text!
        var escapedString = st.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)

          var url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22\(escapedString!)%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
          loadData(url: url)
    }
    
    func loadData(url:String)  {
        DispatchQueue.global().async {
            
        
        do{
            let appUrl=URL (string: url)!
            let data = try! Data(contentsOf: appUrl)
            let jsonopj = try! JSONSerialization.jsonObject(with: data) as! [String:Any]
            let queary = jsonopj["query"] as![String:Any]
            let results = queary["results"] as![String:Any]
            let channel = results["channel"] as![String:Any]
            let astronomy = channel["astronomy"] as![String:Any]
            DispatchQueue.global().sync {
            self.Display.text = "sunset at \(astronomy["sunset"]!)"

            }
            
            
        }
        catch
        {
            print("cannot load from server")
        }
        }
    }
}

