//
//  ViewController2.swift
//  test2
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var item:FoodItem?
    @IBOutlet weak var DesDet: UITextView!
    @IBOutlet weak var NameDet: UILabel!
    @IBOutlet weak var ImageDet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DesDet.text = item?.Desc!
        NameDet.text = item?.Name!
        ImageDet.image = UIImage(named: (item?.Image)!) 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
