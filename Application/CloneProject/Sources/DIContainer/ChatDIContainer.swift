//
//  HomeDIContainer.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/14.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import Presentation


public class ChatDIContainer: DIContainer {
    init() { }
    
//    // MARK: Repository

//
//    // MARK: Usecases

//
//    // MARK: ViewModel
    
    
    func makeChatCoordinator(navigationController: UINavigationController) -> ChatCoordinator {
        .init(navigationController: navigationController, dependencies: self)
    }
}

extension ChatDIContainer: ChatCoordinatorDependencies {
    
}
