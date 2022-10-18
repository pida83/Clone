//
//  ChatViewController.swift
//  CloneProject
//
//  Created by inforex_imac on 2022/10/18.
//  Copyright (c) 2022 All rights reserved.
//

import UIKit

public class ChatViewController: UIViewController {
    
    var viewModel: ChatViewModel!
    
    public static func create(with viewModel: ChatViewModel) -> ChatViewController {
        let vc = ChatViewController()
        vc.viewModel = viewModel
        return vc
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    func bind(to viewModel: ChatViewModel) {

    }
}
