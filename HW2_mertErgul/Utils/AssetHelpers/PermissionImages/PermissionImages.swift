//
//  PermissionImages.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import UIKit

enum PermissionImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case camera = "camera_"
    case photos = "notif_"
    
}
