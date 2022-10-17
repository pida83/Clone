//
//  AppCoordinator.swift
//  Util
//
//  Created by inforex_imac on 2022/10/13.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import Presentation
import Shared
import RealmSwift


public protocol AppCoordinatorDependencies {
    func makeHomeDIContainer() -> HomeDIContainer
    func makeHoodDIContainer() -> HoodDIContainer
    func makeAroundDIContainer() -> AroundDIContainer
    func makeChatDIContainer() -> ChatDIContainer
    func makeMypageDIContainer() -> MypageDIContainer
}

// AppCoordinator 는 디펜던시로부터 필요한 코디네이터를 받고 화면에 올려준다
public final class AppCoordinator: Coordinator {
    public var childCoordinator: [Coordinator] = []
    private var coordinator : CommonTabbarController
    
    private var dependencies : AppCoordinatorDependencies
    
    public init (coordinator: CommonTabbarController, dependencies: AppCoordinatorDependencies){
        self.coordinator = coordinator
        self.dependencies = dependencies
    }
    
    // 각 뷰의 DI Container를 통해 코디네이터를 받고 스타트 하자
    public func start() {
        
        let vc1 = getNavigation()
        let vc2 = getNavigation()
        let vc3 = getNavigation()
        let vc4 = getNavigation()
        let vc5 = getNavigation()
         
        
        
        vc1.tabBarItem = UITabBarItem(title: TabItem.home.title, image: UIImage(systemName: "bookmark"), selectedImage: UIImage(systemName: "bookmark.fill"))
        vc2.tabBarItem = UITabBarItem(title: TabItem.hood.title, image: UIImage(systemName: "location.north"), selectedImage: UIImage(systemName: "location.north.fill"))
        vc3.tabBarItem = UITabBarItem(title: TabItem.around.title, image: UIImage(systemName: "pencil.circle"), selectedImage: UIImage(systemName: "pencil.circle.fill"))
        vc4.tabBarItem = UITabBarItem(title: TabItem.chat.title, image: UIImage(systemName: "video"), selectedImage: UIImage(systemName: "video.fill"))
        vc5.tabBarItem = UITabBarItem(title: TabItem.mypage.title, image: UIImage(systemName: "video"), selectedImage: UIImage(systemName: "video.fill"))
        
         // 디펜던시를 통해코디 네이터 받자
        let homeDI   = self.dependencies.makeHomeDIContainer()
        let chatDI   = self.dependencies.makeChatDIContainer()
        let hoodDI   = self.dependencies.makeHoodDIContainer()
        let aroundDI = self.dependencies.makeAroundDIContainer()
        let mypageDI = self.dependencies.makeMypageDIContainer()
        
        // 결국 메인 앱코디네이터에서 하는건 코디네이터를 불러와 스타트 해주는 일이다
        let hoomCoordinator   = homeDI.makeHomeCoordinater(navigationController: vc1)
        var chatCoordinator   = chatDI.makeChatCoordinator(navigationController: vc2)
        var hoodCoordinaot    = hoodDI.makeHoodCoordinator(navigationController: vc3)
        var aroundCoordinator = aroundDI.makeAroundCoordinater(navigationController: vc4)
        var mypageCoordinator = mypageDI.makeMypageCoordinator(navigationController: vc5)
        
        
        coordinator.view.backgroundColor   = .darkGray
        
        coordinator.viewControllers        = [vc1, vc2, vc3, vc4, vc5]
        coordinator.modalPresentationStyle = .fullScreen
     
        hoomCoordinator.start()
        chatCoordinator.start()
        hoodCoordinaot.start()
        aroundCoordinator.start()
        mypageCoordinator.start()
//        coordinator.selectedIndex          = 0
    }
    
    
    
}

extension AppCoordinator {
    /**
     네비게이션컨트롤러를 생성한다
     - Parameters: -
     - Returns: UINavigationController
     */
    func getNavigation() -> UINavigationController{
        let navigation = UINavigationController()
//            navigation.setToolbarHidden(true, animated: false)
//            navigation.setNavigationBarHidden(true, animated: false)
        return navigation
    }
}
