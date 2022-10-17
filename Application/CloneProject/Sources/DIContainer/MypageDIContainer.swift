//
//  HomeDIContainer.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/14.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import Presentation

public class MypageDIContainer: DIContainer {
    init() { }
    
//    // MARK: Repository

//
//    // MARK: Usecases

//
//    // MARK: ViewModel

    
    func makeMypageCoordinator(navigationController: UINavigationController) -> MypageCoordinator{
        .init(navigationController: navigationController, dependencies: self)
    }
}

extension MypageDIContainer: MypageCoordinatorDependencies {
    
}
