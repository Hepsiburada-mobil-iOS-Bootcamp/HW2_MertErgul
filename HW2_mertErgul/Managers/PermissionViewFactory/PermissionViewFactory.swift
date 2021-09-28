//
//  PermissionViewFactory.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

class PermissionViewFactory {
    
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        switch type {
        case .camera:
            return CameraPermisionManager()
        case .photos:
            return PhotosPermissionManager()
        }
    }
    
}
