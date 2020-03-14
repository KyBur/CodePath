//
//  NotificationsAllViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/13/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class NotificationsAllViewController: UIViewController, IndicatorInfoProvider {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title:"All")
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
