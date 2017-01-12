//
//  ProgressHUDView.swift
//  GlobalProgressHubDemo
//
//  Created by Kittitat Rodphotong on 1/12/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit

class ProgressHUDView: UIView {
    class func hudInView(view: UIView, animation: Bool) -> ProgressHUDView {
        let proHUDView = ProgressHUDView(frame: view.bounds)
        proHUDView.isOpaque = false
        
        view.addSubview(proHUDView)
        view.isUserInteractionEnabled = false
        
//        hudView.showAnimated(animation)
        return proHUDView
        
    }

}
