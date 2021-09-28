//
//  PermissionViewBuilder.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import UIKit

class PermissionViewBuilder {
    
    class func build(with type: PermissionType) -> UIViewController {
        
        let manager = PermissionViewFactory.getManager(with: type)
        let viewModel = PermissionViewModel(manager: manager)
        return PermissionViewController(viewModel: viewModel)
        
    }
    
}
