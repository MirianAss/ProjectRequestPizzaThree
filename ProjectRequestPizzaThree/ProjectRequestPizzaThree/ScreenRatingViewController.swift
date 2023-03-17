//
//  ScreenRatingViewController.swift
//  ProjectRequestPizzaThree
//
//  Created by Mirian Santana on 17/03/23.
//

import UIKit

class ScreenRatingViewController: UIViewController {

    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    var rating: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNamePizza.text = "De acordo com nossos clientes, a quantidade de estrelas que a pizza de \(rating?.name ?? "") possui é de: "
        lblRating.text = "\(rating?.rating ?? 0)"
    }
    
    @IBAction func btValues(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "value") as? ScreenValueViewController {
            
            screen.value = self.rating
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
