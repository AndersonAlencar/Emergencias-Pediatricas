//
//  ViewCode.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 19/09/20.
//

import Foundation


protocol ViewCode {
    func buildHierarchy()
    func setUpLayoutConstraints()
    func aditionalConfigurations()
}

extension ViewCode {
    func setUp() {
        buildHierarchy()
        setUpLayoutConstraints()
        aditionalConfigurations()
    }
}
