//
//  ViewController.swift
//  FreeLancing App
//
//  Created by sHiKoOo on 2/12/19.
//  Copyright © 2019 sHiKoOo. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencuTextField!
    @IBOutlet weak var priceTxt: CurrencuTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let aniButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        aniButton.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        aniButton.setTitle("Calculate", for: .normal)
        aniButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        aniButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // add to textFields
        wageTxt.inputAccessoryView = aniButton
        priceTxt.inputAccessoryView = aniButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    

}

