//
//  ViewController2.swift
//  ZooApp
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    var Animals=[Animal]()
    @IBOutlet weak var tableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Animals.append(Animal(Name: "tigger", desc: "he lives alone", image: "tigger"))
        Animals.append(Animal(Name: "bird", desc: "he lives alone", image: "bird"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:myCellTableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! myCellTableViewCell
        cell.LaName.text=Animals[indexPath.row].Name!
        cell.LaDesc.text=Animals[indexPath.row].desc!
        cell.LaImage.image=UIImage (named:Animals[indexPath.row].image!)
        
        return cell
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
