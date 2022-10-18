//
//  AroundViewController.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/18.
//  Copyright (c) 2022 All rights reserved.
//

import UIKit

public class AroundViewController: UIViewController {
    
    var viewModel: AroundViewModel!
    
    public static func create(with viewModel: AroundViewModel) -> AroundViewController {
        let vc = AroundViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    func bind(to viewModel: AroundViewModel) {

    }
}
