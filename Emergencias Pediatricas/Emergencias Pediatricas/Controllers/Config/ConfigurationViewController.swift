//
//  ConfigurationViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class ConfigurationViewController: UIViewController {

    
    
    @IBOutlet weak var policyBt: UIButton!
    
    @IBOutlet weak var aboutBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
        view.backgroundColor = .backgroundSystemColor

        let logo = UIImage(named: "conf")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.80, blue: 0.80, alpha: 1.00)
    }
    
    
    func configureButtons(){
        policyBt.layer.cornerRadius = 8
        aboutBt.layer.cornerRadius = 8
    }

}
