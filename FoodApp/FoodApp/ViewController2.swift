//
//  ViewController2.swift
//  FoodApp
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var singleitem:FoodItem? 
    
    @IBOutlet weak var DesDetail: UITextView!
    @IBOutlet weak var NameDetail: UILabel!
    @IBOutlet weak var ImageDetail: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DesDetail.text=singleitem?.Desc!
        ImageDetail.image=UIImage(named: (singleitem?.Image!)!)
        NameDetail.text=singleitem?.Name!
    }

    @IBAction func buDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
