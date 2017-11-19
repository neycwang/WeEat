//
//  MainTabBarController.swift
//  WeEat
//
//  Created by apple on 2017/11/19.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainVC = MainViewController()
        let mainItem = UITabBarItem(title: "首页", image: nil, selectedImage: nil)
        mainVC.tabBarItem = mainItem
        
        let messageVC = MessageViewController()
        let messageItem = UITabBarItem(title: "消息", image: nil, selectedImage: nil)
        messageVC.tabBarItem = messageItem
        
        let myselfVC = MyselfViewController()
        let myselfItem = UITabBarItem(title: "我", image: nil, selectedImage: nil)
        myselfVC.tabBarItem = myselfItem
        
        viewControllers = [mainVC, messageVC, myselfVC]
    }
    
}
