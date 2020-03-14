//
//  SearchEntertainmentViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/14/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class SearchEntertainmentViewController: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title:"Entertainment")
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
