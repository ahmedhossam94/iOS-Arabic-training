//
//  ViewController.swift
//  ZooApp
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    var notKiller=["monkey","deer","donkey","elephant","cow"]
    var killer=["tigger","lion","beer","wolf"]
    var sections=["Not Killer","Killer"]
    override func viewDidLoad() {
        super.viewDidLoad()
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
            return notKiller.count

        }
        else{
            return killer.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section==0{
            cell.textLabel?.text=notKiller[indexPath.row]
            
        }
        else{
            cell.textLabel?.text=killer[indexPath.row]
            
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(notKiller[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

}

