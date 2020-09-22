//
//  EmergencyStepsViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class EmergencyStepsViewController: UIViewController {

    var subcategorySteps: Subcategory?
    var step: Int = 0
    
    lazy var emergencyView: EmergencyStepsView = {
        let emergencyView = EmergencyStepsView(frame: .zero,title: subcategorySteps!.subCategoryName, description: (subcategorySteps?.steps[step])!, img: subcategorySteps!.imageSteps[step], indicator: "\(step+1) / \(String(describing: subcategorySteps!.steps.count))")
        emergencyView.stepDelegate = self
        return emergencyView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = emergencyView
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


extension EmergencyStepsViewController: EmergencyStepsProtocol {
    func nextStep() -> (step: String, img: Data, indicator: String)? {
        step += 1
        if step >= (subcategorySteps?.steps.count)! {
            return nil
        }
        let responses = ((subcategorySteps?.steps[step])!,subcategorySteps!.imageSteps[step],"\(step+1) / \(String(describing: subcategorySteps!.steps.count))")
        return responses
    }
    
    func backStep() -> (step: String, img: Data, indicator: String)? {
        if step == 0 {
            return nil
        }
        step -= 1
        let responses = ((subcategorySteps?.steps[step])!,subcategorySteps!.imageSteps[step],"\(step+1) / \(String(describing: subcategorySteps!.steps.count))")
        return responses
    }
    
}
