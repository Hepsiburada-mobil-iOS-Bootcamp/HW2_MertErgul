//
//  ActionButtonData.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import UIKit



class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    
    init(text: String, buttonType:ActionButtonType){
        self.text = text
        self.buttonType = buttonType
    }
}
