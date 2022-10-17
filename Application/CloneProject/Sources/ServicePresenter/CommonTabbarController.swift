//
//  CommonTabbarController.swift
//  PresentationTests
//
//  Created by inforex_imac on 2022/10/13.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit

public enum TabItem: Int {
    case home = 0, hood , around , chat , mypage = 4
    public var title : String {
        switch self {
        case .home:
            return "홈"
        case .hood:
            return "동네"
        case .chat:
            return "채팅"
        case .around:
            return "근처"
        case .mypage:
            return "마이페이지"
        }
        
    }
}

public class CommonTabbarController: UITabBarController {

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CommonTabbarController: UITabBarControllerDelegate {
    public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let selected = TabItem(rawValue: tabBarController.selectedIndex)
        
        print("Should select viewController: \(tabBarController.selectedIndex) \(selected?.title ?? "none")")
           return true
       }
    
    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let selected = TabItem(rawValue: tabBarController.selectedIndex)
        print("did select viewController: \(tabBarController.selectedIndex) \(selected?.title ?? "none")")
    }
    
}
