//
//  ViewController.swift
//  test
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

 
    
    @IBOutlet weak var tableList: UITableView!
    
    var sections = ["Killer","Not Killer"]
    var NotKiller = ["Monkey","cow","Giraffe","Elephant","Donkey"]
    var Killer = ["Tigger","Lion","Fox","Shark"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableList.dataSource=self
        tableList.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0{
            return Killer.count
        }
        else{
            return NotKiller.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableList.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if indexPath.section==0 {
            cell.textLabel?.text = Killer[indexPath.row]
        }else{
            cell.textLabel?.text = NotKiller[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
}

