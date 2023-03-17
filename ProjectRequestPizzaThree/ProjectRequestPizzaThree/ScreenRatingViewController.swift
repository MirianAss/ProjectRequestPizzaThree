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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btValues(_ sender: Any) {
    }
    
    @IBAction func btBack(_ sender: Any) {
    }
}
