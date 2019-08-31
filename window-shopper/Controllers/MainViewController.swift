//
//  ViewController.swift
//  window-shopper
//
//  Created by Nahid on 31/8/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.7039357105, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(UIColor.white, for: .normal)
        calcButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
        
        hoursLbl.isHidden = true
        resultsLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultsLbl.isHidden = false
                hoursLbl.isHidden = false
                resultsLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorTapped(_ sender: Any) {
        hoursLbl.isHidden = true
        resultsLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

