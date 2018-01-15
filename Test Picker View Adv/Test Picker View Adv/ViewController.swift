//
//  ViewController.swift
//  Test Picker View Adv
//
//  Created by egy10 on 1/11/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var picker2: UIPickerView!
    var values=[Int]()
    var student=["mariem","mohamed","ahmed","rwan","mostafa"]
    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.dataSource=self
        picker1.delegate=self
        picker2.dataSource=self
        picker2.delegate=self
        
        for i in 0...256{
            values.append(i)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag==0{
            return 3
        }
        else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag==0{
            return values.count
        }
        else {
            return student.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag==0{
            return String(values[row])
        }
        else {
            return student[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag==0{
            display.text=String (values[row])
            let red1=pickerView.selectedRow(inComponent: 0)
            let green1=pickerView.selectedRow(inComponent: 1)
            let blue1=pickerView.selectedRow(inComponent: 2)
            self.view.backgroundColor=UIColor(red: CGFloat(Double(red1)/255), green: CGFloat(Double(green1)/255), blue: CGFloat(Double(blue1)/255), alpha: 1)
        }
        else{
            display.text=student[row]
        }
    }
}

