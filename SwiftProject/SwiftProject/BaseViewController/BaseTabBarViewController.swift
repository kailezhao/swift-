//
//  BaseTabBarViewController.swift
//  SwiftProject
//
//  Created by zkl on 2020/5/15.
//  Copyright © 2020 zkl. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCustomChildController(ctr: BaseViewController.init(), title: "首页", normalImg: "icon1", selectedImg: "icon1");
        addCustomChildController(ctr: BaseViewController.init(), title: "发现", normalImg: "icon2", selectedImg: "icon2");
        addCustomChildController(ctr: BaseViewController.init(), title: "圈子", normalImg: "icon1", selectedImg: "icon1");
        addCustomChildController(ctr: BaseViewController.init(), title: "个人中心", normalImg: "icon2", selectedImg: "icon2")
        
        let tabBar = BaseTabBarView.init();
        self.setValue(tabBar, forKeyPath: "tabBar");
    }
    func addCustomChildController(ctr:UIViewController,title:String,normalImg:String,selectedImg:String) -> Void {
        let baseNavigationController:BaseNavigationController = BaseNavigationController.init(rootViewController: ctr);
        
        ctr.title = title;
        ctr.tabBarItem.image = UIImage.init(named: normalImg)?.withRenderingMode(.alwaysOriginal);
        ctr.tabBarItem.selectedImage = UIImage.init(named: selectedImg)?.withRenderingMode(.alwaysOriginal);
        
        self.addChild(baseNavigationController);
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
