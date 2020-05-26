//
//  BaseNavigationController.swift
//  SwiftProject
//
//  Created by zkl on 2020/5/15.
//  Copyright © 2020 zkl. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navgationBar = UINavigationBar.appearance();
        let shadow = NSShadow.init()
        shadow.accessibilityFrame = CGRect.zero;
        navgationBar.titleTextAttributes=[NSAttributedString.Key.foregroundColor:UIColor.blue,NSAttributedString.Key.font:kSystemFont(17),NSAttributedString.Key.shadow:shadow];
        navgationBar.isTranslucent = true;
        navgationBar.alpha = 1.0;
        navgationBar.isHidden = false;
        
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
