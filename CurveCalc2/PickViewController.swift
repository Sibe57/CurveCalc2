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

