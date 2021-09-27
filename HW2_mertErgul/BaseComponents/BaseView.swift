//
//  BaseView.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    func addMajorViewComponents() { }
    func setupViewConfigurations() { }
}


