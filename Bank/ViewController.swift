//
//  ViewController.swift
//  Bank
//
//  Created by Alexey Nadenenko on 09.11.2020.
//

import UIKit

class ViewController: UIViewController {

    var amount: Double = 9999.99 {
        didSet {
            updateAmountLabel()
        }
    }
    
    func updateAmountLabel() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "₽ "
        
        let number = NSNumber(value: amount)
        amountLabel?.text = formatter.string(from: number)
    }
    
    @IBOutlet weak var amountLabel: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateAmountLabel()
    
        amount += 0.1
    }
}

