//
//  ViewController.swift
//  GestureReconizerStarted
//
//  Created by admin on 10/29/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
        // sử dụng, khai báo gesturePan cho phep thay đổi view
        let gesturePan = gesture.translation(in: view)
        guard let  gestureView = gesture.view  else {
            return
        }
        // thay đổi x, y để kéo thả image bằng pan
        gestureView.center = CGPoint(x: gestureView.center.x + gesturePan.x, y: gestureView.center.y + gesturePan.y)
        gesture.setTranslation(CGPoint(x: 0, y: 0), in: gestureView)
        
        
    }
    @IBAction func handleRotation(_ gesture: UIRotationGestureRecognizer) {
        guard let gestureView = gesture.view else { return }
        // rotation, transform có kiểu cgAffinTranForm có sacle, vả rotation
        gestureView.transform = gestureView.transform.rotated(by: gesture.rotation)
        gesture.rotation = 0// gtmd
        
        
    }
    @IBAction func handlePinch(_ gesture: UIPinchGestureRecognizer) {
        guard let gestureView = gesture.view else { return }
        gestureView.transform = gestureView.transform.scaledBy(x: gesture.scale, y: gesture.scale)
        gesture.scale = 1
        
    }

}

