//
//  GlobalHeader.swift
//  SwiftProject
//
//  Created by zkl on 2020/5/15.
//  Copyright © 2020 zkl. All rights reserved.
//

import Foundation
import UIKit
let kScreen_bounds = UIScreen.main.bounds;
let kScreen_width = UIScreen.main.bounds.size.width;
let kScreen_height = UIScreen.main.bounds.size.height;
let kScaleW = kScreen_width/375.0;

func kSystemFont(_ font:CGFloat)->UIFont{
    return UIFont.systemFont(ofSize: font*kScaleW)
}
func kBoldSystemFont(_ blod:CGFloat)->UIFont{
    return UIFont.boldSystemFont(ofSize: blod*kScaleW)
}
/// 电池栏的高度
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height;

/// 是否是全面屏
var isFullScreen:Bool{
//    if #available(iOS 11.0, *) {
//        guard let w = UIApplication.shared.delegate?.window,let unwrapedWindow = w else {
//            return false
//        }
//        if unwrapedWindow.safeAreaInsets.bottom > 0{
//            return true
//        }
//    }
//    return false;
    if kStatusBarHeight >= 44.0 {
        return true
    }else{
        return false
    }
}



var kNavigationBarHeight:CGFloat{
    return isFullScreen ? 88.0:64.0
}

var kBottomViewHeight:CGFloat{
    return isFullScreen ? 49.0+34.0:49.0
}

