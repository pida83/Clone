//
//  File1.swift
//  Service
//
//  Created by inforex_imac on 2022/10/13.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit


public protocol MypageCoordinatorDependencies {
    
}

public class MypageCoordinator: Coordinator {
    public var childCoordinator: [Coordinator] = .init()
    var dependencies: MypageCoordinatorDependencies
    var navigationController : UINavigationController
    public func start() {
        
    }
    
    public init(navigationController: UINavigationController, dependencies: MypageCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies         = dependencies
    }
    
    
}
