//
//  MainTabBarViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/13/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    private var bounceAnimation: CAKeyframeAnimation = {
        let bounceAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        bounceAnimation.values = [1.0, 0.8, 0.8, 0.8, 1.0]
        bounceAnimation.duration = TimeInterval(0.2)
        bounceAnimation.calculationMode = CAAnimationCalculationMode.cubic
        return bounceAnimation
    }()
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        // find index if the selected tab bar item, then find the corresponding view and get its image, the view position is offset by 1 because the first item is the background (at least in this case)
        guard let idx = tabBar.items?.index(of: item), tabBar.subviews.count > idx + 1, let imageView = tabBar.subviews[idx + 1].subviews.first as? UIImageView else {
            return
        }
        
        imageView.layer.add(bounceAnimation, forKey: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
