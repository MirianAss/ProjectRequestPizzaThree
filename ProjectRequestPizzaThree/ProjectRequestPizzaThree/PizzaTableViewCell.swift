//
//  PizzaTableViewCell.swift
//  ProjectRequestPizzaThree
//
//  Created by Mirian Santana on 17/03/23.
//

import UIKit
import SDWebImage

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupPizza(pizzaElement: PizzaElement?) {
        lblNamePizza.text = pizzaElement?.name ?? ""
        let urlImage = URL(string: pizzaElement?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
}
