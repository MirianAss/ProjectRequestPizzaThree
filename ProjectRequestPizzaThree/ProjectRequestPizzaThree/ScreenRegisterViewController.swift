//
//  ScreenRegisterViewController.swift
//  ProjectRequestPizzaThree
//
//  Created by Mirian Santana on 17/03/23.
//

import UIKit

class ScreenRegisterViewController: UIViewController {
    
    @IBOutlet weak var lblRegister: UILabel!
    
    var register: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblRegister.text = ""
    }

    @IBAction func btSaveRegister(_ sender: Any) {
        lblRegister.text = "Dados Salvos"
    }
    
    @IBAction func btBack(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
}
