//
//  ViewController.swift
//  FoodApp
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collectionlist: UICollectionView!
    
var foodlist=Array<FoodItem>()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ReadMyData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodlist.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell=collectionlist.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.LdImage.image=UIImage(named: foodlist[indexPath.row].Image!)
        cell.LdName.text = foodlist[indexPath.row].Name!
         
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetails", sender: foodlist[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dis = segue.destination as? ViewController2{
            if let food = sender as? FoodItem{
                dis.singleitem = food
            }
        }
    }
    
    func ReadMyData() {
        
        
        let path = Bundle.main.path(forResource: "Foods", ofType: "plist")!
        let url=URL(fileURLWithPath: path)
        let data=try! Data(contentsOf: url)
        
    let plist = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
        let dicarray = plist as! [[String:String]]
        for dic in dicarray{
            foodlist.append(FoodItem(Name: dic["Name"]!, Desc:  dic["Des"]!, Image:  dic["Image"]!))
 
        }
    }
}

