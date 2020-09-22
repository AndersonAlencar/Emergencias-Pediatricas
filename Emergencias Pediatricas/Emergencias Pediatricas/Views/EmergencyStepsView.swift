//
//  EmergencyStepsView.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class EmergencyStepsView: UIView {
    
    var stepDelegate: EmergencyStepsProtocol?
    
    lazy var acessoryView: UIView = {
        let acessoryView = UIView()
        acessoryView.backgroundColor = .acessoryColor
        acessoryView.layer.cornerRadius = 8
        acessoryView.translatesAutoresizingMaskIntoConstraints = false
        return acessoryView
    }()
    
    lazy var acessoryTittle: UILabel = {
        let acessoryTittle = UILabel()
        acessoryTittle.textAlignment = .center
        //acessoryTittle.text = "Testando"
        acessoryTittle.textColor = .acessoryTextColor
        acessoryTittle.font = UIFont.systemFont(ofSize: 25, weight: .light)
        acessoryTittle.adjustsFontSizeToFitWidth = true
        acessoryTittle.textColor = .black
        acessoryTittle.numberOfLines = 0
        acessoryTittle.sizeToFit()
        acessoryTittle.translatesAutoresizingMaskIntoConstraints = false
        return acessoryTittle
    }()
    
    lazy var imageStep: UIImageView = {
        let imageStep = UIImageView()
        imageStep.clipsToBounds = true
        imageStep.contentMode = .scaleAspectFill
        imageStep.layer.cornerRadius = 8
        imageStep.translatesAutoresizingMaskIntoConstraints = false
        return imageStep
    }()
    
    lazy var descriptionStep: UILabel = {
        let descriptionStep = UILabel()
        descriptionStep.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        descriptionStep.adjustsFontSizeToFitWidth = true
        descriptionStep.textColor = .black
        descriptionStep.textAlignment = .center
        descriptionStep.numberOfLines = 0
        descriptionStep.sizeToFit()
        descriptionStep.translatesAutoresizingMaskIntoConstraints = false
        return descriptionStep
    }()
    
    lazy var backButton: UIButton = {
        let backButton = UIButton()
        backButton.layer.cornerRadius = 8
        backButton.backgroundColor = .buttonColor
        backButton.setImage(UIImage(named: "back"), for: .normal)
        backButton.addTarget(self, action: #selector(backStep), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        return backButton
    }()
    
    lazy var nextButton: UIButton = {
        let nextButton = UIButton()
        nextButton.backgroundColor = .buttonColor
        nextButton.layer.cornerRadius = 8
        nextButton.setImage(UIImage(named: "next"), for: .normal)
        nextButton.addTarget(self, action: #selector(nextStep), for: .touchUpInside)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        return nextButton
    }()
    
    lazy var viewIndicator: UIView = {
        let viewIndicator = UIView()
        viewIndicator.backgroundColor = .buttonColor
        viewIndicator.layer.cornerRadius = 8
        viewIndicator.translatesAutoresizingMaskIntoConstraints = false
        return viewIndicator
    }()
    
    lazy var stepIndicator: UILabel = {
        let stepIndicator = UILabel()
        stepIndicator.textAlignment = .center
        stepIndicator.textColor = .acessoryTextColor
        stepIndicator.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        stepIndicator.adjustsFontSizeToFitWidth = true
        stepIndicator.textColor = .black
        stepIndicator.numberOfLines = 0
        stepIndicator.sizeToFit()
        stepIndicator.translatesAutoresizingMaskIntoConstraints = false
        return stepIndicator
    }()
    
    init(frame: CGRect,title: String, description: String, img: Data, indicator: String) {
        super.init(frame: frame)
        self.acessoryTittle.text = title
        self.descriptionStep.text = description
        self.imageStep.image = UIImage(data: img)
        self.stepIndicator.text = indicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setUp()
    }
    
    @objc func nextStep() {
        let response = stepDelegate?.nextStep()
        if let response = response {
            self.descriptionStep.text = response.step
            self.imageStep.image = UIImage(data: response.img)
            self.stepIndicator.text = response.indicator
        } else {
            //quando for nulo terminar a interação
        }
    }
    
    @objc func backStep() {
        let response = stepDelegate?.backStep()
        if let response = response {
            self.descriptionStep.text = response.step
            self.imageStep.image = UIImage(data: response.img)
            self.stepIndicator.text = response.indicator
        } else {
            //quando for nulo não volta
        }
    }
}


extension EmergencyStepsView: ViewCode {
    func buildHierarchy() {
        addSubview(acessoryView)
        addSubview(acessoryTittle)
        addSubview(imageStep)
        addSubview(descriptionStep)
        addSubview(backButton)
        addSubview(viewIndicator)
        addSubview(stepIndicator)
        addSubview(nextButton)

    }
    
    func setUpLayoutConstraints() {
        NSLayoutConstraint.activate([
            acessoryView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -2),
            acessoryView.centerXAnchor.constraint(equalTo: centerXAnchor),
            acessoryView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.07),
            acessoryView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4)
        ])
        NSLayoutConstraint.activate([
            acessoryTittle.topAnchor.constraint(equalTo: acessoryView.topAnchor, constant: 2),
            acessoryTittle.bottomAnchor.constraint(equalTo: acessoryView.bottomAnchor, constant: 2),
            acessoryTittle.leadingAnchor.constraint(equalTo: acessoryView.leadingAnchor),
            acessoryTittle.trailingAnchor.constraint(equalTo: acessoryView.trailingAnchor)
        ])
        NSLayoutConstraint.activate([
            imageStep.topAnchor.constraint(equalTo: acessoryView.bottomAnchor, constant: 25),
            imageStep.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageStep.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            imageStep.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)
        ])
        NSLayoutConstraint.activate([
            descriptionStep.topAnchor.constraint(equalTo: imageStep.bottomAnchor, constant: 5),
            descriptionStep.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            descriptionStep.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            descriptionStep.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: descriptionStep.bottomAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            backButton.widthAnchor.constraint(equalTo: backButton.heightAnchor, multiplier: 1.5)
        ])
        NSLayoutConstraint.activate([
            viewIndicator.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            viewIndicator.centerXAnchor.constraint(equalTo: centerXAnchor),
            //viewIndicator.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 5),
            viewIndicator.heightAnchor.constraint(equalTo: backButton.heightAnchor, multiplier: 0.7),
            viewIndicator.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3)
        ])
        NSLayoutConstraint.activate([
            stepIndicator.centerXAnchor.constraint(equalTo: viewIndicator.centerXAnchor),
            stepIndicator.centerYAnchor.constraint(equalTo: viewIndicator.centerYAnchor),
            stepIndicator.heightAnchor.constraint(equalTo: viewIndicator.heightAnchor),
            stepIndicator.widthAnchor.constraint(equalTo: viewIndicator.widthAnchor)
        ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: backButton.topAnchor),
            nextButton.leadingAnchor.constraint(equalTo: stepIndicator.trailingAnchor, constant: 35),
            nextButton.heightAnchor.constraint(equalTo: backButton.heightAnchor),
            nextButton.widthAnchor.constraint(equalTo: backButton.widthAnchor)
        ])
    }
    
    func aditionalConfigurations() {
        backgroundColor = .backgroundSystemColor
    }
    
    
}
