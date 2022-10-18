//
//  HomeViewModel.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/18.
//  Copyright (c) 2022 All rights reserved.
//

import Foundation

public protocol HomeViewModelInput {
    func viewDidLoad()
}

public protocol HomeViewModelOutput {
    
}

public protocol HomeViewModel: HomeViewModelInput, HomeViewModelOutput { }

public class DefaultHomeViewModel: HomeViewModel {
    
    // MARK: - OUTPUT
    public init(){
        
    }
}

// MARK: - INPUT. View event methods
extension DefaultHomeViewModel {
    public func viewDidLoad() {
    }
}
