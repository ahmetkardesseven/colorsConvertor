//
//  ViewController.swift
//  colorsConvertor
//
//  Created by ahmet kardesseven on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emptyLabel: UILabel!
    @IBOutlet weak var chooseColors: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var redTextField: UITextField!
    var secilenIndex : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        label.text?.removeAll()
        redTextField.text?.removeAll()
        greenTextField.text?.removeAll()
        blueTextField.text?.removeAll()
        emptyLabel.backgroundColor = UIColor.white
        
        if secilenIndex == 0 {
            btnConvert.setTitle("RGB - HEX Çevir", for: UIControl.State.normal)
        }else{
            btnConvert.setTitle("HEX - RGB Çevir", for: UIControl.State.normal)
        }
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        if secilenIndex == 0 {
            convertRGBtoHEX()
        }else {
            convertHEXtoRGB()
        }
        
        
    }
    func convertRGBtoHEX(){
        
        
        guard let redValue = UInt8(redTextField.text!) else {return}
        guard let greenValue = UInt8(greenTextField.text!)else {return}
        guard let blueValue = UInt8(blueTextField.text!)else {return}
        
        
        
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    label.text = "HEX Color : #\(redValue)\(greenValue)\(blueValue)"
                    emptyLabel.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                    
                    
               
        
    }
    func convertHEXtoRGB(){
        guard let redValue = UInt8(redTextField.text!, radix: 16)else {return}
        guard let greenValue = UInt8(greenTextField.text!, radix: 16)else {return}
        guard let blueValue = UInt8(blueTextField.text!, radix: 16) else {return}
                  //  print("RED : \(redValue) \n GREEN : \(greenValue) \n BLUE : \(blueValue)")
                    label.text = "RED : \(redValue) \n GREEN : \(greenValue) \n BLUE : \(blueValue)"
                    emptyLabel.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
               
        
    }
}

