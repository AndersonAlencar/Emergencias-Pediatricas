//
//  LearnTableViewCell.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class LearnTableViewCell: UITableViewCell {

    lazy var imgDescription: UIImageView =  {
        let imgDescription = UIImageView()
        imgDescription.clipsToBounds = true
        imgDescription.contentMode = .scaleToFill
        imgDescription.translatesAutoresizingMaskIntoConstraints = false
        return imgDescription
    }()
    
    lazy var nameEmergency: UILabel = {
        let nameEmergency = UILabel()
        nameEmergency.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        nameEmergency.adjustsFontSizeToFitWidth = true
        nameEmergency.textColor = .black
        nameEmergency.numberOfLines = 0
        nameEmergency.sizeToFit()
        nameEmergency.translatesAutoresizingMaskIntoConstraints = false
        return nameEmergency
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    override func layoutSubviews() {
        setUp()
    }
    
    func configureCell(name: String, image: UIImage) {
        self.nameEmergency.text = name
        self.imgDescription.image = image
    }

}

extension LearnTableViewCell: ViewCode {
    func buildHierarchy() {
        addSubview(imgDescription)
        addSubview(nameEmergency)
    }
    
    func setUpLayoutConstraints() {
        NSLayoutConstraint.activate([
            imgDescription.centerYAnchor.constraint(equalTo: centerYAnchor),
            imgDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imgDescription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.2),
            imgDescription.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5)
        ])
        
        NSLayoutConstraint.activate([
            nameEmergency.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameEmergency.leadingAnchor.constraint(equalTo: imgDescription.trailingAnchor, constant: 10),
            nameEmergency.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameEmergency.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
    
    func aditionalConfigurations() {
        backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
    }
    
}
