//
//  PokemonTableViewCell.swift
//  PokemonCase
//
//  Created by Furkan Erzurumlu on 22.03.2023.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension PokemonTableViewCell {
    static var identifier: String{
        return String(describing: Self.self)
    }
    static var nibName: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
