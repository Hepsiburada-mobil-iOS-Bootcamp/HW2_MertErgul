//
//  PermissionViewModel.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

class PermissionViewModel {
    
    private let manager: PermissionManagerProtocol
    private var permissionViewDismissActionBlock: voidCompletionBlock?
    
    init(manager: PermissionManagerProtocol) {
        self.manager = manager
    }
    
    func listenManagerActions(with completion: @escaping voidCompletionBlock) {
        permissionViewDismissActionBlock = completion
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return manager.getPermissionMainViewData(with: negativeListenerHandler, with: positiveListenerHandler)

    }
    
    lazy var negativeListenerHandler: voidCompletionBlock = { [weak self] in
        print("negative pressed")
        self?.permissionViewDismissActionBlock?()
    }
    
    lazy var positiveListenerHandler: voidCompletionBlock = { [weak self] in
        print("positive pressed")
    }
    
}
