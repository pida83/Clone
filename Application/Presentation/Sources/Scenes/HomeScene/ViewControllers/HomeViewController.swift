//
//  HomeCViewController.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/18.
//  Copyright (c) 2022 All rights reserved.
//

import UIKit

public class HomeViewController: UIViewController {
    
    var viewModel: HomeViewModel!
    var layoutModel: HomeLayoutModel!
    
    public static func create(with viewModel: HomeViewModel) -> HomeViewController {
        let vc = HomeViewController()
            vc.viewModel = viewModel
            vc.layoutModel = HomeLayoutModel()
        return vc
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
        layoutModel.viewDidLoad(parent: self.view)
    }
    
    func bind(to viewModel: HomeViewModel) {

    }
}
