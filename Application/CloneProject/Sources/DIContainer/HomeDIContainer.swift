//
//  HomeDIContainer.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/14.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import Presentation


public class HomeDIContainer: DIContainer {
    init() { }
    
//    // MARK: Repository

//
//    // MARK: Usecases

//
//    // MARK: ViewModel
    func makeHomeCoordinater(navigationController: UINavigationController) -> HomeCoordinator{
        .init(navigationController: navigationController, dependencies: self)
    }
    
    
    func makeViewModel() -> HomeViewModel{
        return DefaultHomeViewModel()
    }
}

extension HomeDIContainer: HomeCoordinatorDependencies {
    
    public func makeHomeViewController() -> HomeViewController {
        let vc = HomeViewController.create(with: makeViewModel())
            vc.view.backgroundColor = .clear
        return vc
    }
    
}
