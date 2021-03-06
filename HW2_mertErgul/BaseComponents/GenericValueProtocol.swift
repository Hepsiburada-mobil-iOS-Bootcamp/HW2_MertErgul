//
//  GenericValueProtocol.swift
//  HW2_mertErgul
//
//  Created by Mert Ergul on 27.09.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
