//
//  EmergencyModel.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 21/09/20.
//

import Foundation
import UIKit


struct Emergency {
    var categoryName: String
    var categoryImage: Data
    var subCategories: [Subcategory]
}

struct Subcategory {
    var subCategoryName: String
    var subcategorymage: Data
    var steps: [String]
    var imageSteps: [Data]
}

extension Emergency {
    static let subcategory = Subcategory(subCategoryName: "Primeiro Grau", subcategorymage: (UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!, steps: ["Larvar Bem","Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste ","Larvar mais"], imageSteps: [(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "cafe")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!])
    
    static let subcategory2 = Subcategory(subCategoryName: "Segundo Grau", subcategorymage: (UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!, steps: ["Larvar Bem","Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste ","Larvar mais"], imageSteps: [(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "cafe")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "cafe")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!])
    
    static let subcategory3 = Subcategory(subCategoryName: "Terceiro Grau", subcategorymage: (UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!, steps: ["Larvar Bem","Teste Teste Teste Teste Teste Teste Teste Teste Teste Teste ","Larvar mais"], imageSteps: [(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "cafe")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!,(UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!])
    
    
    static let mockData = Emergency(categoryName: "Queimadura", categoryImage: (UIImage(named: "chemex")?.jpegData(compressionQuality: 1))!, subCategories: [subcategory,subcategory2,subcategory3])
}
