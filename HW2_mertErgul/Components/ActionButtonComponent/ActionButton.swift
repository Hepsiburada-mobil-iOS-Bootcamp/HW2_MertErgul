//
//  ActionButton.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import UIKit

protocol ActionButtonDelegeta: AnyObject{
    func actionButtonPressed()
    
}

class ActionButton: GenericBaseView<ActionButtonData> {
    
    weak var delegate : ActionButtonDelegeta?
    
    private lazy var shadowContainer: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset = CGSize(width: 0, height: 2)
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.4
        temp.layer.cornerRadius = 6
//        temp.backgroundColor = .red
        return temp
    }()
    
    
    private lazy var contanierView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false // Autolayout disable
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
        
        
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTabGasture()
    }
    
    private lazy var infoTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = " "
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.textColor = .white
        
        return temp
    }()
    
    private func addContainerView() {
        addSubview(shadowContainer)
        shadowContainer.addSubview(contanierView)
        contanierView.addSubview(infoTitle)
        
        NSLayoutConstraint.activate([
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            contanierView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            contanierView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            contanierView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            contanierView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            
            infoTitle.centerXAnchor.constraint(equalTo: contanierView.centerXAnchor),
            infoTitle.centerYAnchor.constraint(equalTo: contanierView.centerYAnchor),
            
        ])
        
    }
    override func loadDataView() {
        super.loadDataView()
        
        guard let data = returnData() else { return }
        infoTitle.text = data.text
        
        switch data.buttonType{
        case .filled(let theme):
            contanierView.backgroundColor = theme.value
            infoTitle.textColor = .white
        case .outlined(let theme):
            contanierView.layer.borderWidth = 1
            contanierView.layer.borderColor = theme.value.cgColor
            contanierView.backgroundColor = .white
            infoTitle.textColor = theme.value
        }
    }
    
}

extension ActionButton: UIGestureRecognizerDelegate {
    private func addTabGasture(){
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
        
    }
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer){
        isUserInteractionEnabled = false
        startTappedAnimation{finish in
            if finish {
                print("CLICKED")
                self.delegate?.actionButtonPressed()
                self.isUserInteractionEnabled = true
            }
            
        }
        
    }
    
}

fileprivate extension Selector{
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}
