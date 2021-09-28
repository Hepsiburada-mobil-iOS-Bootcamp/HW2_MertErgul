//
//  CameraPermisionManager.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 1.10.2021.
//

import Foundation

class CameraPermisionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping voidCompletionBlock) {
        print("request permission")
    }
    
    func getPermissionMainViewData(with negativeListener: @escaping voidCompletionBlock, with positiveListener: @escaping voidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(
            image: PermissionImages.camera.value,
            labelPackData: LabelPackComponentData(
                title: PermissionLocalizables.cameraPermissionTitle.value,
                subTitle: PermissionLocalizables.cameraPermissionSubTitle.value),
            actionModuleData: ActionModuleData(
                negativeButtonData: ActionButtonData(text: PermissionLocalizables.permissionNotNow.value, buttonType: .outlined(.smooth)).setActionButtonListener(by: negativeListener),
                positiveButtonData: ActionButtonData(text: PermissionLocalizables.permissionOk.value, buttonType: .filled(.smooth)).setActionButtonListener(by: positiveListener)))
    }

    
}
