//
//  EmergencyStepsProtocol.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 21/09/20.
//

import Foundation

protocol EmergencyStepsProtocol {
    func nextStep() -> (step: String,img: Data,indicator: String)?
    func backStep() -> (step: String,img: Data,indicator: String)?

}
