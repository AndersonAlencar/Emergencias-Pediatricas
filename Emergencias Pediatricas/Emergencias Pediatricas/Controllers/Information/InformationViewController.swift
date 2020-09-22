//
//  InformationViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 22/09/20.
//

import UIKit

class InformationViewController: UIViewController {

    
    @IBOutlet weak var numberEmergencyLB: UILabel!
    @IBOutlet weak var preventionsLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigation()
        numberEmergencyLB.backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
        numberEmergencyLB.layer.cornerRadius = 8
        numberEmergencyLB.clipsToBounds = true
        
        preventionsLB.backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
        preventionsLB.layer.cornerRadius = 8
        preventionsLB.clipsToBounds = true
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
    
    func configureNavigation() {
        let backButton = UIButton()
        backButton.setImage(UIImage(named: "back1"), for: .normal)
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 51)
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        let logo = UIImage(named: "info")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.80, blue: 0.80, alpha: 1.00)
    }

}
