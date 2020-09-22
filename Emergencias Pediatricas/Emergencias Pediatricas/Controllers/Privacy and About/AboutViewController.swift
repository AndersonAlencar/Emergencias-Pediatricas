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


    
    override func viewDidLoad() {
        super.viewDidLoad()
        lb1.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "
        lb2.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "

        lb2.backgroundColor = .red
        lb2.layer.cornerRadius = 8
        lb2.clipsToBounds = true
        lb3.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "

        lb4.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "

        lb5.text = "Este aplicativo disponibiliza orientações básicas sobre primeiros socorros pediátricos, mas não substitui o atendimento profissional. "

    }
}
    

