//
//  ViewController.swift
//  Animations Introduction
//
//  Created by Kyle Burns on 3/17/20.
//  Copyright © 2020 Kyle Burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bowserKartView: UIImageView!
    @IBOutlet weak var marioKartView: UIImageView!
    @IBOutlet weak var toadKartView: UIImageView!
    
    var startingPointKartView0 = CGPoint()
    var startingPointKartView1 = CGPoint()
    var startingPointKartView2 = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startingPointKartView0 = bowserKartView.center
        startingPointKartView1 = marioKartView.center
        startingPointKartView2 = toadKartView.center
    }
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location
    }
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }
    }
    @IBAction func didPressBackground(_ sender: UILongPressGestureRecognizer) {
        bowserKartView.center = startingPointKartView0
        marioKartView.center = startingPointKartView1
        toadKartView.center = startingPointKartView2
    }
    

}

