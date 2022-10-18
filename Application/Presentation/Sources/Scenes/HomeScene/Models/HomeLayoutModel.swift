//
//  HomeLayoutModel.swift
//  SharedTests
//
//  Created by inforex_imac on 2022/10/17.
//  Copyright © 2022 Yeoboya. All rights reserved.
//

import UIKit
import SnapKit
import Then

public struct HomeLayoutModel {
    
    var parentView: UIView = UIView(frame: .zero).then{
        $0.backgroundColor = .blue
    }
    
    var mainTable: UITableView = .init(frame: .zero).then{
        $0.backgroundColor = .yellow
    }
    
    public init() {
        
    }
    
    
    func viewDidLoad(parent: UIView) {
        self.setLayout(parent: parent)
        
    }
    

    func setLayout(parent: UIView) {
        parent.addSubViewToSafeAreaGuide(subView: parentView)
        
    }
    
    
    
    func setConstraintEdge(view : UIView) {
//        subView.snp.makeConstraints{
//            $0.edges.equalToSuperview()
//        }
    }
    
    func setConstraint( view : UIView) {
        
    }
    
}

extension UIView {
    func addSubViewToSafeAreaGuide(subView: UIView) {
        self.addSubview(subView)
        subView.snp.makeConstraints{
            $0.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
    func addSubViewToSuper(subView: UIView) {
        self.addSubview(subView)
        subView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    
//    func setAddSubView(subView: UIView, setConstraint : @escaping (_ : UIView) -> Void) {
//        self.addSubview(subView)
//        setConstraint(subView)
//    }
}
