//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Kyle Burns on 11/19/19.
//  Copyright © 2019 Kyle Burns. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var currencySegment: UISegmentedControl!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        currencySegment.selectedSegmentIndex = Globals.Setting.currencyIndex
        colorSegment.selectedSegmentIndex = Globals.Setting.colorIndex
        updateLocalColors()
    }
    
    @IBAction func optionChosen(_ sender: Any) {
        ////Globals
        //Currency Change
        let curr = ["$","£","€"]
        Globals.Currency.main = curr[currencySegment.selectedSegmentIndex]
        
        //Color Change
        if(colorSegment.selectedSegmentIndex == 0){
            Globals.Colors.colorLight = UIColor(red:0/255, green:202/255, blue:162/255, alpha: 1)
            Globals.Colors.colorDark = UIColor(red:0/255, green:145/255, blue:147/255, alpha: 1)
        }
        else if(colorSegment.selectedSegmentIndex == 1){
            Globals.Colors.colorLight = UIColor(red:148/255, green:148/255, blue:255/255, alpha: 1)
            Globals.Colors.colorDark = UIColor(red:148/255, green:35/255, blue:255/255, alpha: 1)
        }
        else if(colorSegment.selectedSegmentIndex == 2){
            Globals.Colors.colorLight = UIColor(red:255/255, green:120/255, blue:125/255, alpha: 1)
            Globals.Colors.colorDark = UIColor(red:232/255, green:0/255, blue:0/255, alpha: 1)
        }
        //Update Settings
        Globals.Setting.currencyIndex = currencySegment.selectedSegmentIndex
        Globals.Setting.colorIndex = colorSegment.selectedSegmentIndex
        ////Locals
        updateLocalColors()
    }
    func updateLocalColors(){
        currencyLbl.textColor = Globals.Colors.colorDark
        colorLbl.textColor = Globals.Colors.colorDark
        currencySegment.tintColor = Globals.Colors.colorDark
        colorSegment.tintColor = Globals.Colors.colorDark
        self.view.backgroundColor = Globals.Colors.colorLight
        navigationController?.navigationBar.barTintColor = Globals.Colors.colorLight
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
