//
//  HoodViewController.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/18.
//  Copyright (c) 2022 All rights reserved.
//

import UIKit

public class HoodViewController: UIViewController {
    
    var viewModel: HoodViewModel!
    
    public static func create(with viewModel: HoodViewModel) -> HoodViewController {
        let vc = HoodViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    func bind(to viewModel: HoodViewModel) {

    }
}
