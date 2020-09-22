//
//  LearnViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class LearnViewController: UIViewController {
    
    @IBOutlet weak var learnTable: UITableView!
    
    @IBOutlet weak var btInformation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        configureInformationButton()
        
        let logo = UIImage(named: "logo2")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.80, blue: 0.80, alpha: 1.00)
    }
    
    func configureTable() {
        learnTable.backgroundColor = UIColor(red: 0.96, green: 1.00, blue: 1.00, alpha: 1.00)
        learnTable.separatorStyle = .none
        learnTable.showsVerticalScrollIndicator = false
        learnTable.bounces = false
        learnTable.delegate = self
        learnTable.dataSource = self
        learnTable.register(LearnTableViewCell.self, forCellReuseIdentifier: "learnCell")
    }
    
    func configureInformationButton() {
        let spacing:CGFloat = 10; // the amount of spacing to appear between image and title
        btInformation.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing);
        btInformation.titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0);
        btInformation.layer.cornerRadius = 8
        btInformation.addTarget(self, action: #selector(presentInformation), for: .touchUpInside)
    }
    
    @objc func presentInformation() {
        let cv = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InformationControllerID") as? InformationViewController
        let nav = UINavigationController(rootViewController: cv!)
        present(nav, animated: true, completion: nil)
    }
}

extension LearnViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "learnCell", for: indexPath) as! LearnTableViewCell
        cell.configureCell(name: "Parada Cardiorespiratória", image: UIImage(named: "parada")!) //[indexpath.section]
        cell.layer.cornerRadius = 15
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height / 6
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let cellSpacingHeight: CGFloat = 10
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 10))
        view.backgroundColor = UIColor(red: 0.96, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
