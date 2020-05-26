//
//  BaseTabBarView.swift
//  SwiftProject
//
//  Created by zkl on 2020/5/15.
//  Copyright © 2020 zkl. All rights reserved.
//

import UIKit

class BaseTabBarView: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let item = UITabBarItem.appearance()
        item.setTitleTextAttributes([NSAttributedString.Key.font:kSystemFont(13),NSAttributedString.Key.foregroundColor:UIColor.gray], for: UIControl.State.normal);
        item.setTitleTextAttributes([NSAttributedString.Key.font:kSystemFont(13),NSAttributedString.Key.foregroundColor:UIColor.black], for: UIControl.State.selected);
        
        item.titlePositionAdjustment = UIOffset.init(horizontal: 0, vertical: 0);
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.isTranslucent = false
        let w = kScreen_width/5.0;
        var index:Int = 0;
        for item in self.subviews {
            if item.isKind(of: NSClassFromString("UITabBarButton")!)
            {
                if index == 2 {
                   let centerBtn = UIButton.init(type: .custom);
                    centerBtn.layer.cornerRadius = 5;
                    centerBtn.backgroundColor = .orange;
                    centerBtn.frame = CGRect.init(x: CGFloat(index)*w, y: 0, width: w, height:kBottomViewHeight);
                    self.addSubview(centerBtn);
                    index+=1;
                }
                item.frame = CGRect.init(x: CGFloat(index)*w, y: 0, width: w, height:kBottomViewHeight);
                index += 1;
            }
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
