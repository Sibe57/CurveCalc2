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
        var dXArray = [Double]()
        var dYArray = [Double]()
        let xTilt = ((Double(hZ.text!)!)-(Double(hX.text!)!))/Double(lX.text!)!
        let yTilt = ((Double(hY.text!)!)-(Double(hZ.text!)!))/Double(lY.text!)!
        
        
        dXArray.append(Double(k2DX.text!)!)
        dXArray.append(Double(k3DX.text!)!)
        dXArray.append(Double(k4DX.text!)!)
        dXArray.append(Double(k5DX.text!)!)
        dXArray.append(Double(k6DX.text!)!)
        
        dYArray.append(Double(k2DY.text!)!)
        dYArray.append(Double(k3DY.text!)!)
        dYArray.append(Double(k4DY.text!)!)
        dYArray.append(Double(k5DY.text!)!)
        dYArray.append(Double(k6DY.text!)!)
        
        let summDX = dXArray.reduce(0, +)
        let summDY = dYArray.reduce(0, +)
        
        dXArray.map({$0/summDX*Double(lX.text!)!})
        dYArray.map({$0/summDY*Double(lY.text!)!})
        hK1.text = hX.text
        hK2.text = String(dXArray[0]*xTilt+dYArray[0]*yTilt+(Double(hK1.text!)!))
        hK3.text = String(dXArray[1]*xTilt+dYArray[1]*yTilt+(Double(hK2.text!)!))
        hK4.text = String(dXArray[2]*xTilt+dYArray[2]*yTilt+(Double(hK3.text!)!))
        hK5.text = String(dXArray[3]*xTilt+dYArray[3]*yTilt+(Double(hK4.text!)!))
        hK6.text = hY.text

        
        
    }
}
