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


    @IBAction func goCalc6(_ sender: Any) {
        
        guard let hZValue = Double(hZ.text!) else {return}
        guard let hXValue = Double(hX.text!) else {return}
        guard let hYValue = Double(hY.text!) else {return}
        guard let lXValue = Double(lX.text!) else {return}
        guard let lYValue = Double(lY.text!) else {return}
        
        guard let k2DXValue = Double(k2DX.text!) else {return}
        guard let k2DYValue = Double(k2DY.text!) else {return}
        
        guard let k3DXValue = Double(k3DX.text!) else {return}
        guard let k3DYValue = Double(k3DY.text!) else {return}
        
        guard let k4DXValue = Double(k4DX.text!) else {return}
        guard let k4DYValue = Double(k4DY.text!) else {return}
        
        guard let k5DXValue = Double(k5DX.text!) else {return}
        guard let k5DYValue = Double(k5DY.text!) else {return}
        
        guard let k6DXValue = Double(k6DX.text!) else {return}
        guard let k6DYValue = Double(k6DY.text!) else {return}
        
        
        let dXArray = [k2DXValue, k3DXValue, k4DXValue, k5DXValue, k6DXValue]
        let dYArray = [k2DYValue, k3DYValue, k4DYValue, k5DYValue, k6DYValue]
        
        let xTilt = (hZValue-hXValue)/lXValue
        let yTilt = (hYValue-hZValue)/lYValue
        
        let summDX = dXArray.reduce(0, +)
        let summDY = dYArray.reduce(0, +)
        
        let dXArrayEquval = dXArray.map({$0/summDX*lXValue})
        let dYArrayEquval = dYArray.map({$0/summDY*lYValue})
        
        hK1.text = hX.text
        hK2.text = String(dXArrayEquval[0]*xTilt+dYArrayEquval[0]*yTilt+(Double(hK1.text!)!))
        hK3.text = String(dXArrayEquval[1]*xTilt+dYArrayEquval[1]*yTilt+(Double(hK2.text!)!))
        hK4.text = String(dXArrayEquval[2]*xTilt+dYArrayEquval[2]*yTilt+(Double(hK3.text!)!))
        hK5.text = String(dXArrayEquval[3]*xTilt+dYArrayEquval[3]*yTilt+(Double(hK4.text!)!))
        hK6.text = hY.text

        
        
    }
}
