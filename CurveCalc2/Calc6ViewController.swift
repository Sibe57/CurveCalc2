//
//  Calc6ViewController.swift
//  CurveCalc2
//
//  Created by Федор Еронин on 27.01.2022.
//

import UIKit

class Calc6ViewController: UIViewController {
    
    @IBOutlet weak var hZ: UITextField!
    @IBOutlet weak var lX: UITextField!
    @IBOutlet weak var lY: UITextField!
    @IBOutlet weak var hX: UITextField!
    @IBOutlet weak var hY: UITextField!
    @IBOutlet weak var k2DX: UITextField!
    @IBOutlet weak var k2DY: UITextField!
    @IBOutlet weak var k3DX: UITextField!
    @IBOutlet weak var k3DY: UITextField!
    @IBOutlet weak var k4DX: UITextField!
    @IBOutlet weak var k4DY: UITextField!
    @IBOutlet weak var k5DY: UITextField!
    @IBOutlet weak var k5DX: UITextField!
    @IBOutlet weak var k6DX: UITextField!
    @IBOutlet weak var k6DY: UITextField!
    @IBOutlet weak var hK1: UILabel!
    @IBOutlet weak var hK2: UILabel!
    @IBOutlet weak var hK3: UILabel!
    @IBOutlet weak var hK4: UILabel!
    @IBOutlet weak var hK5: UILabel!
    @IBOutlet weak var hK6: UILabel!
    @IBOutlet weak var goCalc6Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goCalc6(_ sender: Any) {
        
        //show to user where misstake
        
        if Double(hZ.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            hZ.textColor = .red
        } else {hZ.textColor = .black}
        
        if Double(hX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            hX.textColor = .red
        } else {hX.textColor = .black}
        
        if Double(hY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            hY.textColor = .red
        } else {hY.textColor = .black}
        
        if Double(lX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            lX.textColor = .red
        } else {lX.textColor = .black}
        
        if Double(lY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            lY.textColor = .red
        } else {lY.textColor = .black}
        
        if Double(k2DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k2DX.textColor = .red
        } else {k2DX.textColor = .black}
        
        if Double(k2DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k2DY.textColor = .red
        } else {k2DY.textColor = .black}
        
        if Double(k3DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k3DX.textColor = .red
        } else {k3DX.textColor = .black}
        
        if Double(k3DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k3DY.textColor = .red
        } else {k3DY.textColor = .black}
        
        if Double(k4DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k4DX.textColor = .red
        } else {k4DX.textColor = .black}
        
        if Double(k4DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k4DY.textColor = .red
        } else {k4DY.textColor = .black}
        
        if Double(k5DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k5DX.textColor = .red
        } else {k5DX.textColor = .black}
        
        if Double(k5DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k5DY.textColor = .red
        } else {k5DY.textColor = .black}
        
        if Double(k6DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k6DX.textColor = .red
        } else {k6DX.textColor = .black}
        
        if Double(k6DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k6DY.textColor = .red
        } else {k6DY.textColor = .black}
        
        
        
        //safety unwrapped all textField
        
        guard let hZValue = Double(hZ.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let hXValue = Double(hX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let hYValue = Double(hY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let lXValue = Double(lX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let lYValue = Double(lY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k2DXValue = Double(k2DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k2DYValue = Double(k2DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k3DXValue = Double(k3DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k3DYValue = Double(k3DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k4DXValue = Double(k4DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k4DYValue = Double(k4DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k5DXValue = Double(k5DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k5DYValue = Double(k5DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k6DXValue = Double(k6DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k6DYValue = Double(k6DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        // simple ingeeneric magic ;)
        
        let dXArray = [k2DXValue, k3DXValue, k4DXValue, k5DXValue, k6DXValue]
        let dYArray = [k2DYValue, k3DYValue, k4DYValue, k5DYValue, k6DYValue]
        
        let xTilt = (hZValue-hXValue)/lXValue
        let yTilt = (hYValue-hZValue)/lYValue
        
        let summDX = dXArray.reduce(0, +)
        let summDY = dYArray.reduce(0, +)
        
        let dXArrayEquval = dXArray.map({$0/summDX*lXValue})
        let dYArrayEquval = dYArray.map({$0/summDY*lYValue})
        
        let hK2Value = dXArrayEquval[0]*xTilt+dYArrayEquval[0]*yTilt+hXValue
        let hK3Value = dXArrayEquval[1]*xTilt+dYArrayEquval[1]*yTilt+hK2Value
        let hK4Value = dXArrayEquval[2]*xTilt+dYArrayEquval[2]*yTilt+hK3Value
        let hK5Value = dXArrayEquval[3]*xTilt+dYArrayEquval[3]*yTilt+hK4Value
        
        
        //show result to user
        
        
        hK1.text = hX.text
        hK2.text = String(Double(round(1000*hK2Value)/1000))
        hK3.text = String(Double(round(1000*hK3Value)/1000))
        hK4.text = String(Double(round(1000*hK4Value)/1000))
        hK5.text = String(Double(round(1000*hK5Value)/1000))
        hK6.text = hY.text

        
        
    }
}
