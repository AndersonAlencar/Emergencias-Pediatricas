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
        policyBt.addTarget(self, action: #selector(presentPrivacy), for: .touchUpInside)
        aboutBt.layer.cornerRadius = 8
        aboutBt.addTarget(self, action: #selector(presentAbout), for: .touchUpInside)
    }
    
    
    @objc func presentAbout() {
        let cv = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AboutControllerID") as? AboutViewController
        //cv?.modalPresentationStyle = .fullScreen
        let nav = UINavigationController(rootViewController: cv!)
        //nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true, completion: nil)
    }
    
    @objc func presentPrivacy() {
        let cv = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PrivacyControllerID") as? PrivacyViewController
        let nav = UINavigationController(rootViewController: cv!)
        present(nav, animated: true, completion: nil)
    }

}
