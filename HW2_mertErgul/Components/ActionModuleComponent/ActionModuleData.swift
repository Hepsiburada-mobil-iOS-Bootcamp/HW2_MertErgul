//
//  ActionModuleComponentData.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

class ActionModuleData {
    
    private(set) var negativeButtonData: ActionButtonData
    private(set) var positiveButtonData: ActionButtonData
    
    init(negativeButtonData: ActionButtonData, positiveButtonData: ActionButtonData) {
        self.negativeButtonData = negativeButtonData
        self.positiveButtonData = positiveButtonData
    }
    
}

