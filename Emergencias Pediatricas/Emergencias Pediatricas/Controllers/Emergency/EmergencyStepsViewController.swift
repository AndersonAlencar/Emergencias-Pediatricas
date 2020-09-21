//
//  EmergencyStepsViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class EmergencyStepsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = EmergencyStepsView()
        navigationController?.navigationBar.topItem?.title = "Parada CardioRepiratório"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        //navigationItem.title = "Emergências Pediatricas"
        
        let backButton = UIButton()
        backButton.setImage(UIImage(named: "back1"), for: .normal)
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 51)
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        navigationController?.navigationBar.barTintColor = .buttonColor

//        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Voltar", style: .plain, target: self, action: #selector(back))
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
}
