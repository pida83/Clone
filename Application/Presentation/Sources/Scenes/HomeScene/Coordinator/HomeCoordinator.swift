//
//  File1.swift
//  Service
//
//  Created by inforex_imac on 2022/10/13.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit

public protocol HomeCoordinatorDependencies {
    
}


public class HomeCoordinator: Coordinator {
    public var childCoordinator: [Coordinator] = .init()
    var navigationController : UINavigationController
    var dependencies:  HomeCoordinatorDependencies
    
    public func start() {
        
    }
    
    public init(navigationController: UINavigationController, dependencies:  HomeCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies         = dependencies
    }
}
