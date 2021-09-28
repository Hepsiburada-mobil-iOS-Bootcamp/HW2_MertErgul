//
//  PermissionManagerProtocol.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

enum PermissionType {

    case camera
    case photos
    
}

protocol PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping voidCompletionBlock)
    
    func getPermissionMainViewData(with negativeListener: @escaping voidCompletionBlock, with positiveListener: @escaping voidCompletionBlock) -> PermissionMainViewData
    
}
