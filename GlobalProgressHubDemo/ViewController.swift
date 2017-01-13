//
//  ViewController.swift
//  GlobalProgressHubDemo
//
//  Created by Kittitat Rodphotong on 1/11/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBAction
    @IBAction func pkhub() {
        HUD.show(.labeledProgress(title: "", subtitle: "Loading"))
    }
    
    @IBAction func globalHud() {
        ProgressHUDView.showHUDInView(superView: view)
        let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            ProgressHUDView.hideHUD()
            print("HIDE")
        }
    }
}

