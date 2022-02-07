//
//  Calc10ViewController.swift
//  CurveCalc2
//
//  Created by Федор Еронин on 05.02.2022.
//

import UIKit

class Calc10ViewController: UIViewController {
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
    @IBOutlet weak var k7DX: UITextField!
    @IBOutlet weak var k7DY: UITextField!
    @IBOutlet weak var k8DX: UITextField!
    @IBOutlet weak var k8DY: UITextField!
    @IBOutlet weak var k9DX: UITextField!
    @IBOutlet weak var k9DY: UITextField!
    @IBOutlet weak var k10DX: UITextField!
    @IBOutlet weak var k10DY: UITextField!
    @IBOutlet weak var hK1: UILabel!
    @IBOutlet weak var hK2: UILabel!
    @IBOutlet weak var hK3: UILabel!
    @IBOutlet weak var hK4: UILabel!
    @IBOutlet weak var hK5: UILabel!
    @IBOutlet weak var hK6: UILabel!
    @IBOutlet weak var hK7: UILabel!
    @IBOutlet weak var hK8: UILabel!
    @IBOutlet weak var hK9: UILabel!
    @IBOutlet weak var hK10: UILabel!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var outputStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.addSubview(mainStackView)
        myScrollView.contentSize = CGSize(width: mainStackView.frame.width, height: mainStackView.frame.height+20)
        print("didload")
        outputStackView.isHidden = true
        
        


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
    
    @IBAction func goCalc10(_ sender: Any) {
        
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
        
        if Double(k7DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k7DX.textColor = .red
        } else {k7DX.textColor = .black}
        
        if Double(k7DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k7DY.textColor = .red
        } else {k7DY.textColor = .black}
        
        if Double(k8DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k8DX.textColor = .red
        } else {k8DX.textColor = .black}
        
        if Double(k8DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k8DY.textColor = .red
        } else {k8DY.textColor = .black}
        
        if Double(k9DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k9DX.textColor = .red
        } else {k9DX.textColor = .black}
        
        if Double(k9DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k9DY.textColor = .red
        } else {k9DY.textColor = .black}
        
        if Double(k10DX.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k10DX.textColor = .red
        } else {k10DX.textColor = .black}
        
        if Double(k10DY.text!.replacingOccurrences(of: ",", with: ".")) == nil {
            k10DY.textColor = .red
        } else {k10DY.textColor = .black}
        
        
        
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
        
        guard let k7DXValue = Double(k7DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k7DYValue = Double(k7DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k8DXValue = Double(k8DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k8DYValue = Double(k8DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k9DXValue = Double(k9DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k9DYValue = Double(k9DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        guard let k10DXValue = Double(k10DX.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        guard let k10DYValue = Double(k10DY.text!.replacingOccurrences(of: ",", with: ".")) else {return}
        
        // simple ingeeneric magic ;)
        
        let dXArray = [k2DXValue, k3DXValue, k4DXValue, k5DXValue, k6DXValue, k7DXValue, k8DXValue, k9DXValue, k10DXValue]
        
        let dYArray = [k2DYValue, k3DYValue, k4DYValue, k5DYValue, k6DYValue, k7DYValue, k8DYValue, k9DYValue, k10DYValue]
        
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
        let hK6Value = dXArrayEquval[4]*xTilt+dYArrayEquval[4]*yTilt+hK5Value
        let hK7Value = dXArrayEquval[5]*xTilt+dYArrayEquval[5]*yTilt+hK6Value
        let hK8Value = dXArrayEquval[6]*xTilt+dYArrayEquval[6]*yTilt+hK7Value
        let hK9Value = dXArrayEquval[7]*xTilt+dYArrayEquval[7]*yTilt+hK8Value
        
        
        //show result to user
        
        
        hK1.text = "H K1 = " + String(Double(round(1000*hXValue)/1000))
        hK2.text = "H K2 = " + String(Double(round(1000*hK2Value)/1000))
        hK3.text = "H K3 = " + String(Double(round(1000*hK3Value)/1000))
        hK4.text = "H K4 = " + String(Double(round(1000*hK4Value)/1000))
        hK5.text = "H K5 = " + String(Double(round(1000*hK5Value)/1000))
        hK6.text = "H K6 = " + String(Double(round(1000*hK6Value)/1000))
        hK7.text = "H K7 = " + String(Double(round(1000*hK7Value)/1000))
        hK8.text = "H K8 = " + String(Double(round(1000*hK8Value)/1000))
        hK9.text = "H K9 = " + String(Double(round(1000*hK9Value)/1000))
        hK10.text = "H K10 = " + String(Double(round(1000*hYValue)/1000))
        outputStackView.isHidden = false

        
        
    }
}

