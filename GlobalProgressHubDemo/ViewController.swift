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
        HUD.show(.labeledProgress(title: "", subtitle: "Loading..."))
    }
    
    @IBAction func globalHud() {
        
    }
}

