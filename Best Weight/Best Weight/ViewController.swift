//
//  ViewController.swift
//  Best Weight
//
//  Created by egy10 on 1/10/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var heighText: UITextField!
    @IBOutlet weak var displayWeight: UILabel!
    @IBOutlet weak var dataViewPicker: UIPickerView!
    @IBOutlet weak var genderChoose: UILabel!
    
    var gender:[String]=["Male","Female"]
    var genderIndex=0
    override func viewDidLoad() {
        super.viewDidLoad()
            dataViewPicker.dataSource=self
            dataViewPicker.delegate=self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcWeight(_ sender: Any) {
        var age:Int = Int (ageText.text!)!
        var height:Int = Int (heighText.text!)!
        
        var bestWeight = (height * 10) - (age / 2)
        if genderIndex==0{
            bestWeight+=10
        }
        else{
            bestWeight-=10
        }
        displayWeight.text = String (bestWeight)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderChoose.text="You Choose: \(gender[row])"
        genderIndex=row
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}

