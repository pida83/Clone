//
//  HomeDIContainer.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/14.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import Presentation

public class AroundDIContainer: DIContainer {
    init() { }
    
//    // MARK: Repository

//
//    // MARK: Usecases

//
//    // MARK: ViewModel
    func makeAroundCoordinater(navigationController: UINavigationController) -> AroundCoordinator{
        .init(navigationController: navigationController, dependenceis: self)
    }
}

extension AroundDIContainer: AroundCoordinatorDependencies {
    
}
