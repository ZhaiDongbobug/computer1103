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
    var temp2:String = ""
    //var temp3:Double = 0
    var operatorflug:Double = 0
    var POT:Bool = true
    var i:Double = 0//i=double(result.text!)
    var j:Double = 0
    var oper:Int = 1//运算符保存
    
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
            i = i + Double(result.text!)!
            result.text = String(i)
            i = 0
            j = 0
            POT = true
            operatorflug = 0
            oper = 1
        }
        if(operatorflug == 2)
        {
            i = i - Double(result.text!)!
            result.text = String(i)
            i = 0
            j = 0
            POT = true
            operatorflug = 0
            oper = 1
        }
        if(operatorflug == 3)
        {
            j = j * Double(result.text!)!
            if(oper == 1)
            {
                i = i + j
            }
            if(oper == 2)
            {
                i = i - j
            }
            result.text = String(i)
            i = 0
            j = 0
            POT = true
            operatorflug = 0
            oper = 1
        }
        if(operatorflug == 4)
        {
            j = j / Double(result.text!)!
            i = i + j
            result.text = String(i)
            i = 0
            j = 0
            POT = true
            operatorflug = 0
            oper = 1
        }
    }
    @IBAction func divide(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        if(operatorflug == 0)
        {
            j = temp1
        }
        if(operatorflug == 1)
        {
            oper = 1
            j = temp1
        }
        if(operatorflug == 2)
        {
            oper = 2
            j = temp1
        }
        if(operatorflug == 3)
        {
            j = j * temp1
        }
        if(operatorflug == 4)
        {
            j = j / temp1
        }
        operatorflug = 4
    }
    @IBAction func ride(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
        if(operatorflug == 0)
        {
            j = temp1
        }
        if(operatorflug == 1)
        {
            oper = 1
            j = temp1
        }
        if(operatorflug == 2)
        {
            oper = 2
            j = temp1
        }
        if(operatorflug == 3)
        {
            j = j * temp1
        }
        if(operatorflug == 4)
        {
            j = j / temp1
        }
        operatorflug = 3
    }
    @IBAction func reduce(_ sender: Any) {
      
        temp1 = Double(result.text!)!
        result.text = ""
        if(operatorflug == 0)
        {
            i = temp1
        }
        if(operatorflug == 1)
        {
            i = i + temp1
        }
        if(operatorflug == 2)
        {
            i = i - temp1
        }
        if(operatorflug == 3)
        {
            j = j * temp1
            if(oper == 1)
            {
                i = i + j
            }
            if(oper == 2)
            {
                i = i - j
            }
            oper = 2
        }
        if(operatorflug == 4)
        {
            j = j / temp1
            if(oper == 1)
            {
                i = i + j
            }
            if(oper == 2)
            {
                i = i - j
            }
        }
        operatorflug = 2
        //oper = 2
    }
    @IBAction func plus(_ sender: Any) {
        
        temp1 = Double(result.text!)!
        result.text = ""
        if(operatorflug == 0)
        {
            i = temp1
        }
        if(operatorflug == 1)
        {
            i = i + temp1
        }
        if(operatorflug == 2)
        {
            i = i - temp1
        }
        if(operatorflug == 3)
        {
            j = j * temp1
            if(oper == 1)
            {
                i = i + j
            }
            if(oper == 2)
            {
                i = i - j
            }
        }
        if(operatorflug == 4)
        {
            j = j / temp1
            if(oper == 1)
            {
                i = i + j
            }
            if(oper == 2)
            {
                i = i - j
            }
        }
        operatorflug = 1
        //oper = 1
    }
    @IBAction func sign(_ sender: Any) {
        temp1 = 0 - Double(result.text!)!
        result.text = "\(temp1)"
    }
    @IBAction func point(_ sender: Any) {
        if(POT)
        {
            result.text = result.text! + "."
        }
        POT = false
    }
    @IBAction func omit(_ sender: Any) {
        POT = true
        if(result.text != "")
        {
            temp2 = result.text!
            temp2.remove(at: temp2.index(before:temp2.endIndex))
            result.text = temp2
        }
    }
    @IBAction func cancle(_ sender: Any) {
        POT = true
        operatorflug = 0
        oper = 1
        i = 0
        j = 0
        result.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

