//
//  PermissionMainViewData.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import UIKit

class PermissionMainViewData {
    
    private(set) var image: UIImage
    private(set) var labelPackData: LabelPackComponentData
    private(set) var actionModuleData: ActionModuleData
    
    init(image: UIImage,
         labelPackData: LabelPackComponentData,
         actionModuleData: ActionModuleData) {
        self.image = image
        self.labelPackData = labelPackData
        self.actionModuleData = actionModuleData
    }
    
}
