//
//  ViewController.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {
    
    private var actionButton: ActionButton!
    private var actionModule: ActionModule!
    
    @IBAction func camareButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
    }
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    
}
