//
//  ViewController.swift
//  calc
//
//  Created by egy10 on 1/9/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {
  
    
    
    @IBOutlet weak var numOne: UITextField!
    @IBOutlet weak var numTwo: UITextField!
    @IBOutlet weak var displayResult: UILabel!
    @IBOutlet weak var chooseOpe: UIPickerView!
    var operate = ["+","-","*","/"]
    var index=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chooseOpe.dataSource=self
        chooseOpe.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    
    @IBAction func buClick(_ sender: Any) {
        let number1:Double = Double(numOne.text!)!
        let number2:Double = Double(numTwo.text!)!
        switch index {
        case 0:
            let sum = number1 + number2
            displayResult.text="sum= \(sum)"
        case 1:
            let sum = number1 - number2
            displayResult.text="Result Is= \(sum)"
        case 2:
            let sum = number1 * number2
            displayResult.text="Result Is= \(sum)"
        case 3:
            let sum = number1 / number2
            displayResult.text="Result Is= \(sum)"
        default:
            displayResult.text="Choose one operator"

        }
       
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return operate.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return operate[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        index=row;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}

