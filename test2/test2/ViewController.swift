//
//  ViewController.swift
//  test2
//
//  Created by egy10 on 1/12/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
   
    @IBOutlet weak var tablelist: UICollectionView!
    var foodss=Array<FoodItem>()
    override func viewDidLoad() {
        super.viewDidLoad()
        returnData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodss.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = tablelist.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.LaLabel.text = foodss[indexPath.row].Name!
        cell.LaImage.image = UIImage (named: foodss[indexPath.row].Image!)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ShowDetails", sender: foodss[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dis = segue.destination as? ViewController2{
            if let itemm = sender as? FoodItem{
                dis.item = itemm
            }
        }
    }
    
    func returnData()  {
        
        let path = Bundle.main.path(forResource: "foods", ofType: "plist")!
        let url = URL(fileURLWithPath: path)
        let data=try! Data(contentsOf: url)
        let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as! [[String:String]]
        
        for item in plist{
            foodss.append(FoodItem(Name: item["Name"]!, Desc: item["Des"]!, Image: item["Image"]!))
        }
        
    }
    
}

