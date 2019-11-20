//
//  TipViewController.swift
//  Tip Calculator
//
//  Created by Kyle Burns on 11/19/19.
//  Copyright © 2019 Kyle Burns. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var tipdescLbl: UILabel!
    @IBOutlet weak var totaldescLbl: UILabel!
    
    
    @IBOutlet weak var billLbl: UITextField!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var segmentedTip: UISegmentedControl!
    @IBOutlet weak var billView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       billLbl.keyboardAppearance = .dark
    }
    override func viewWillAppear(_ animated: Bool)
    {
        if isMovingToParent
        {
            //Do nothing
        }
        else
        {
            self.view.backgroundColor = Globals.Colors.colorDark
            billView.backgroundColor = Globals.Colors.colorLight
            navigationController?.navigationBar.barTintColor = Globals.Colors.colorLight
            segmentedTip.tintColor = Globals.Colors.colorDark
            tipdescLbl.textColor = Globals.Colors.colorLight
            totaldescLbl.textColor = Globals.Colors.colorLight
            totalLbl.textColor = Globals.Colors.colorLight
            tipLbl.textColor = Globals.Colors.colorLight
            billLbl.textColor = Globals.Colors.colorDark
            billLbl.placeholder = Globals.Currency.main
            billChanged((Any).self)
        }
        super.viewWillDisappear(animated)
    }
    
    @IBAction func billChanged(_ sender: Any) {
        let tipPercents = [0.1,0.15,0.2]
        let bill = Double(billLbl.text!) ?? 0
        let tip = bill * tipPercents[segmentedTip.selectedSegmentIndex]
        let total = bill + tip
        tipLbl.text = String(format: "\(Globals.Currency.main)%.2f", tip)
        totalLbl.text = String(format: "\(Globals.Currency.main)%.2f", total)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
