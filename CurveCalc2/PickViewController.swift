//
//  PickViewController.swift
//  CurveCalc2
//
//  Created by Федор Еронин on 26.01.2022.
//

import UIKit

class PickViewController: UIViewController {
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var toCalcButton: UIButton!
    var numberOfStake: Int = 4
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        label.text = "Количество колов включая краевые: \(numberOfStake)"
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func goToCalc(_ sender: Any) {
        switch picker.selectedRow(inComponent: 0) {
        case 0,1,2,3:
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newVC = storyBoard.instantiateViewController(withIdentifier: "Calc6ViewController") as! Calc6ViewController
            self.present(newVC, animated: true, completion: nil)
        case 4,5,6:
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newVC = storyBoard.instantiateViewController(withIdentifier: "Calc10ViewController") as! Calc10ViewController
            self.present(newVC, animated: true, completion: nil)
        default: print("COCK")
        }
    }
    
}
extension PickViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 7
    }
    
    
}

extension PickViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row + 4)
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = "Количество колов включая краевые: \(row + 4)"
        
    }
}

