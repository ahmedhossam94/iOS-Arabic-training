//
//  ViewController2.swift
//  test
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {
   

    @IBOutlet weak var tableitem: UITableView!
    
    var animals=Array<Animal>()
    override func viewDidLoad() {
        super.viewDidLoad()
        animals.append(Animal(Name: "tigger", Image: "zebra"))
        animals.append(Animal(Name: "bird", Image: "panda"))
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
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell=tableitem.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! TableViewCell
        cell.LaImage.image=UIImage(named: animals[indexPath.row].Image!)
        cell.lalabel.text=animals[indexPath.row].Name!
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
