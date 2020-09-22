//
//  AboutViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 21/09/20.
//

import UIKit

class AboutViewController: UIViewController {

    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb5: UILabel!
    @IBOutlet weak var lb6: UILabel!
    @IBOutlet weak var lb7: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIButton()
        backButton.setImage(UIImage(named: "back1"), for: .normal)
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 51)
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        let logo = UIImage(named: "aboutTitle")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.80, blue: 0.80, alpha: 1.00)
        
        lb1.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "
        lb2.text = "Desenvolvedores"
        lb2.backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
        lb2.layer.cornerRadius = 8
        lb2.clipsToBounds = true
        
        
        lb3.text = """
 Alunos do curso de
        Sistemas e Midias Digitais
        da Universidade Federal do Ceara:

        Anderson Alencar
        Daniel Saboya
        Lucas Queiroz
        Markus Filipe Taumaturgo
 """

        lb4.text = "Orientadores"
        lb4.backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
        lb4.layer.cornerRadius = 8
        lb4.clipsToBounds = true

        lb5.text = """
        Professores do curso de
        Sistemas e Midias Digitais
        da Universidade Federal do Ceara:

        Catia Luzia Oliveira
        Henrique Sergio Lima
        Ismael Pordeus Bezerra
        Inga Freire Saboia
        Wellington Wagner Ferreira

        Orientadora pediatra:
            Dra. Virna Costa e Silva
"""
        lb6.text = "PERC"
        lb6.backgroundColor = UIColor(red: 0.67, green: 0.85, blue: 0.90, alpha: 1.00)
        lb6.layer.cornerRadius = 8
        lb6.clipsToBounds = true
        
        lb7.text = "Programa de Educação em Reanimação Cardiorrespiratória (PERC) é um programa de ensino, pesquisa e extensão do curso de medicina da Universidade Federal do Ceará."

    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
}
    

