//
//  ScreenValueViewController.swift
//  ProjectRequestPizzaThree
//
//  Created by Mirian Santana on 17/03/23.
//

import UIKit

class ScreenValueViewController: UIViewController {
    
    @IBOutlet weak var lblPizzaP: UILabel!
    @IBOutlet weak var lblPizzaM: UILabel!
    @IBOutlet weak var lblPizzaG: UILabel!
    
    var value: PizzaElement?

    override func viewDidLoad() {
        super.viewDidLoad()

        lblPizzaP.text = "PEQUENA - R$\(value?.priceP ?? 0.0)"
        lblPizzaM.text = "MÉDIA - R$\(value?.priceM ?? 0.0)"
        lblPizzaG.text = "GRANDE - R$\(value?.priceG ?? 0.0)"
    }
 
    @IBAction func btRegister(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "register") as? ScreenRegisterViewController {
            
            screen.register = self.value
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btBack(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
}
