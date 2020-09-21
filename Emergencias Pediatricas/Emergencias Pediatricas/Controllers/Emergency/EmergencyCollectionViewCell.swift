//
//  EmergencyCollectionViewCell.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 19/09/20.
//

import UIKit

class EmergencyCollectionViewCell: UICollectionViewCell {
    lazy var emergencyName: UILabel = {
        let emergencyName = UILabel()
        emergencyName.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        emergencyName.adjustsFontSizeToFitWidth = true
        emergencyName.textColor = .systemBlue
        emergencyName.text = "Apenas Testando"
        emergencyName.textColor = .white
        emergencyName.translatesAutoresizingMaskIntoConstraints = false
        return emergencyName
    }()
    
    lazy var characterImage: UIImageView = {
        let characterImage = UIImageView()
        characterImage.clipsToBounds = true
        characterImage.image = UIImage(named: "ame")
        characterImage.translatesAutoresizingMaskIntoConstraints = false
        return characterImage
    }()
    
    func configureCell(name: String, imageEmergency: UIImage) {
        emergencyName.text = name
        characterImage.image = imageEmergency
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension EmergencyCollectionViewCell: ViewCode {
    func buildHierarchy() {
        addSubview(characterImage)
        addSubview(emergencyName)
    }
    
    func setUpLayoutConstraints() {
        NSLayoutConstraint.activate([
            characterImage.topAnchor.constraint(equalTo: topAnchor),
            characterImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            characterImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            emergencyName.topAnchor.constraint(equalTo: characterImage.bottomAnchor, constant: 5),
            emergencyName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            emergencyName.trailingAnchor.constraint(equalTo: trailingAnchor),
            emergencyName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        
        ])
    }
    
    func aditionalConfigurations() {
        backgroundColor = UIColor(red: 0.70, green: 0.85, blue: 0.89, alpha: 1.00)
    }
}
