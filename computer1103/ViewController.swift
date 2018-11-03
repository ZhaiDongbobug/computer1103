//
//  ViewController.swift
//  computer1103
//
//  Created by ss20171103190 on 2018/11/3.
//  Copyright © 2018 ss20171103190. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp1:Double = 0
    var operatorflug:Double = 0
    
    @IBAction func zero(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func one(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func seven(_ sender: Any){
        result.text = result.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBOutlet weak var result: UITextField!
    
    
    @IBAction func equal(_ sender: Any) {
        if(operatorflug == 1)
        {
            temp1 = temp1 + Double(result.text!)!
            result.text = "\(temp1)"
        }
        if(operatorflug == 2)
        {
            temp1 = temp1 - Double(result.text!)!
            result.text = "\(temp1)"
        }
        if(operatorflug == 3)
        {
            temp1 = temp1 * Double(result.text!)!
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            temp1 = temp1 / Double(result.text!)!
            result.text = "\(temp1)"
        }
    }
    @IBAction func divide(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 4
    }
    @IBAction func ride(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 3
    }
    @IBAction func reduce(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 2
    }
    @IBAction func plus(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 1
    }
    @IBAction func point(_ sender: Any) {
    }
    @IBAction func cancle(_ sender: Any) {
        result.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

