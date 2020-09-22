//
//  AboutView.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 21/09/20.
//

import UIKit

class AboutView: UIView {

    
    lazy var labelOne: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "Scroll Top Scroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll Top"
        labelOne.backgroundColor = .red
        labelOne.numberOfLines = 0
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        return labelOne
    }()
    
    lazy var labelOtwo: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "Scroll Top Scroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll TopScroll Top"
        labelOne.backgroundColor = .red
        labelOne.numberOfLines = 0
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        return labelOne
    }()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .lightGray
        return scrollView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setUp()
    }
    
}

extension AboutView: ViewCode {
    func buildHierarchy() {
        addSubview(scrollView)
        addSubview(labelOne)
        //addSubview(labelOtwo)
    }
    
    func setUpLayoutConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
        NSLayoutConstraint.activate([
            labelOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            labelOne.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            labelOne.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
        ])
        NSLayoutConstraint.activate([
            labelOtwo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1000),
            labelOtwo.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            labelOtwo.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            labelOtwo.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -10)
        ])
        
    }
    
    func aditionalConfigurations() {
        backgroundColor = .white
    }
    
    
}
