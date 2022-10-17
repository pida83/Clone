//
//  File1.swift
//  Service
//
//  Created by inforex_imac on 2022/10/13.
//  Copyright © 2022 Yeoboya. All rights reserved.
//


import UIKit
public protocol AroundCoordinatorDependencies {
    
}

public class AroundCoordinator: Coordinator {
    
    public var childCoordinator : [Coordinator] = .init()
    var navigationController : UINavigationController
    var dependenceis : AroundCoordinatorDependencies
    
    public func start() {
        
    }
    
    public init(navigationController: UINavigationController, dependenceis: AroundCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependenceis         = dependenceis
    }
}
