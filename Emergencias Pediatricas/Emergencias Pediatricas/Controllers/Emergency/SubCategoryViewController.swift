//
//  SubCategoryViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class SubCategoryViewController: UIViewController {
    
    
    @IBOutlet weak var section1: UIView!
    @IBOutlet weak var section2: UIView!
    @IBOutlet weak var section3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        section1.layer.cornerRadius = 8
        section2.layer.cornerRadius = 8
        section3.layer.cornerRadius = 8
        addGesture()
        
        navigationController?.navigationBar.topItem?.title = "Emergencias"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationItem.title = "Emergências Pediatricas"
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "Voltar", style: .plain, target: nil, action: nil)
        
    }
    
    func addGesture() {
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(initEmergency))
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(initEmergency))
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(initEmergency))
        section1.addGestureRecognizer(gesture1)
        section2.addGestureRecognizer(gesture2)
        section3.addGestureRecognizer(gesture3)

    }
    
    @objc func initEmergency(){
        let emergencyStepsController = EmergencyStepsViewController()
        let navigationSteps = UINavigationController(rootViewController: emergencyStepsController)
        navigationSteps.modalPresentationStyle = .fullScreen
        present(navigationSteps, animated: true, completion: nil)
    }
}
