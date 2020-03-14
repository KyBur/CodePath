//
//  NotificationsParentViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/13/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class NotificationsParentViewController: ButtonBarPagerTabStripViewController {


    override func viewDidLoad() {
        
        let navigationBar = navigationController!.navigationBar
        navigationBar.clipsToBounds = true
        
        let twitterBlue = UIColor(displayP3Red: 77/255, green: 159/255, blue: 236/255, alpha: 1)
        
        settings.style.buttonBarBackgroundColor = .clear
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.selectedBarBackgroundColor = twitterBlue
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 15)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .gray
            newCell?.label.textColor = twitterBlue

        // Do any additional setup after loading the view.
        }
        super.viewDidLoad()
        let selectedBarBackgroundView = UIView()
        selectedBarBackgroundView.backgroundColor = .gray
        view.insertSubview(selectedBarBackgroundView, belowSubview: buttonBarView)
        selectedBarBackgroundView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        selectedBarBackgroundView.bottomAnchor.constraint(equalTo: buttonBarView.bottomAnchor, constant: 0).isActive = true
        selectedBarBackgroundView.leadingAnchor.constraint(equalTo: buttonBarView.leadingAnchor, constant: 0).isActive = true
        selectedBarBackgroundView.trailingAnchor.constraint(equalTo: buttonBarView.trailingAnchor, constant: 0).isActive = true
        selectedBarBackgroundView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "allNotifications")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mentionsNotifications")
        return [child_1, child_2]
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
