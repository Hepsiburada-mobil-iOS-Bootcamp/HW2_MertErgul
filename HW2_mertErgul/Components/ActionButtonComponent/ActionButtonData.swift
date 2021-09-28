//
//  ActionButtonData.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import UIKit

typealias voidCompletionBlock = () -> Void


class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: voidCompletionBlock?
    
    init(text: String, buttonType:ActionButtonType){
        self.text = text
        self.buttonType = buttonType
    }
    
    func setActionButtonListener(by value: voidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
}
