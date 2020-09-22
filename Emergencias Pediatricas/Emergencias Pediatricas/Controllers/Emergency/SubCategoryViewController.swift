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
    
    @IBOutlet weak var imgSection1: UIImageView!
    @IBOutlet weak var imgSection2: UIImageView!
    @IBOutlet weak var imgSection3: UIImageView!
    
    @IBOutlet weak var nameSection1: UILabel!
    @IBOutlet weak var nameSection2: UILabel!
    @IBOutlet weak var nameSection3: UILabel!
    
    var emergency: Emergency?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSections()
        setSectionsLayout()
        addGesture()
        
        navigationController?.navigationBar.topItem?.title = "Emergencias"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationItem.title = "Emergências Pediatricas"
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "Voltar", style: .plain, target: nil, action: nil)
        
    }
    
    func configureSections() {
        section1.layer.cornerRadius = 8
        section2.layer.cornerRadius = 8
        section3.layer.cornerRadius = 8
        if (emergency?.subCategories.count)! < 3 {
            section3.isHidden = true
        }
    }
    
    func setSectionsLayout() {
        imgSection1.image = UIImage(data: emergency!.subCategories[0].subcategorymage)
        imgSection1.layer.cornerRadius = 8
        imgSection2.image = UIImage(data: emergency!.subCategories[1].subcategorymage)
        imgSection2.layer.cornerRadius = 8

        
        nameSection1.text = emergency?.subCategories[0].subCategoryName
        nameSection2.text = emergency?.subCategories[1].subCategoryName
        
        if (emergency?.subCategories.count)! > 2 {
            imgSection3.image = UIImage(data: emergency!.subCategories[2].subcategorymage)
            nameSection3.text = emergency?.subCategories[2].subCategoryName
            imgSection3.layer.cornerRadius = 8

        }
    }
    
    func addGesture() {
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(initEmergency(sender:)))
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(initEmergency(sender:)))
        let gesture3 = UITapGestureRecognizer(target: self, action: #selector(initEmergency(sender:)))
        section1.addGestureRecognizer(gesture1)
        section2.addGestureRecognizer(gesture2)
        section3.addGestureRecognizer(gesture3)

    }
    
    @objc func initEmergency(sender :Any){
        let sc = sender as! UITapGestureRecognizer
        let emergencyStepsController = EmergencyStepsViewController()
        
        switch sc.view {
            case section1:
                emergencyStepsController.subcategorySteps = emergency?.subCategories[0]
            case section2:
                emergencyStepsController.subcategorySteps = emergency?.subCategories[1]
            default:
                emergencyStepsController.subcategorySteps = emergency?.subCategories[2]

        }
        let navigationSteps = UINavigationController(rootViewController: emergencyStepsController)
        navigationSteps.modalPresentationStyle = .fullScreen
        present(navigationSteps, animated: true, completion: nil)
    }
}
