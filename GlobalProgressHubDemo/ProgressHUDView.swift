//
//  ProgressHUDView.swift
//  GlobalProgressHubDemo
//
//  Created by Kittitat Rodphotong on 1/12/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit

class ProgressHUDView: UIView {
    private static var bgView = UIView()
    
    class func showHUDInView(superView: UIView) {
        // Create BackgroundView
        bgView = UIView(frame: superView.frame)
        bgView.isUserInteractionEnabled = false
        
        // Create Box View
        let boxWidth: CGFloat = 96
        let boxHeight: CGFloat = 96
        let boxRect = CGRect(x: superView.frame.size.width/2 - boxWidth/2,
                             y: superView.frame.size.height/2 - boxHeight/2,
                             width: boxWidth,
                             height: boxHeight)
        let boxView = UIView(frame: boxRect)
        boxView.backgroundColor = UIColor(white: 0.2, alpha: 0.8)
        boxView.layer.cornerRadius = 10.0
        
        // Create Indicator
        let activityIndictor = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
        let activityIndicatorSize: CGFloat = 30
        activityIndictor.frame = CGRect(x: boxView.frame.size.width/2 - activityIndicatorSize/2,
                                        y: boxView.frame.size.height/2 - 20,
                                        width: activityIndicatorSize,
                                        height: activityIndicatorSize)
        activityIndictor.startAnimating()
        boxView.addSubview(activityIndictor)
        
        // Create Label
        let label = UILabel(frame: CGRect(x: 0,
                                          y: boxView.frame.size.height/2 + 20,
                                          width: boxView.frame.size.width,
                                          height: 22))
        label.textAlignment = .center
        label.text = "Loading"
        label.textColor = UIColor(white: 1, alpha: 0.7)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        boxView.addSubview(label)
        
        bgView.addSubview(boxView)
        superView.addSubview(bgView)
    }
    
    class func hideHUD() {
        bgView.removeFromSuperview()
    }
}
