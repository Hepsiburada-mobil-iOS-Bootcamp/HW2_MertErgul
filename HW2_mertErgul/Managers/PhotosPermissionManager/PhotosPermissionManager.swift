//
//  PhotosPermissionManager.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    func requestPermission(with completion : @escaping voidCompletionBlock){
                
    }
    
    func getPermissionMainViewData(with negativeListener: @escaping voidCompletionBlock, with positiveListener: @escaping voidCompletionBlock) -> PermissionMainViewData {
        
        return PermissionMainViewData(image: PermissionImages.photos.value,
                                      labelPackData: LabelPackComponentData(title: PermissionLocalizables.photosPermissionTitle.value, subTitle: PermissionLocalizables.photosPermissionSubTitle.value), actionModuleData: ActionModuleData(negativeButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.bright)).setActionButtonListener(by: negativeListener), positiveButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, buttonType: .filled(.bright)).setActionButtonListener(by: positiveListener)))
    }
}
