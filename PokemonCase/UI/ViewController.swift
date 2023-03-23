//
//  ViewController.swift
//  PokemonCase
//
//  Created by Furkan Erzurumlu on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    var viewModel: mainVM = mainVM()
    var allPoke = [AllPokemons]()
    
    override func viewDidLoad() {
        
        viewModel.delegate = self
        viewModel.getUpComingData()
        
        super.viewDidLoad()
        pokemonTableView.register(PokemonTableViewCell.nibName, forCellReuseIdentifier: PokemonTableViewCell.identifier)
        pokemonTableView.delegate = self
        pokemonTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPoke.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonTableView.dequeueReusableCell(withIdentifier: PokemonTableViewCell.identifier, for: indexPath) as! PokemonTableViewCell
        
//        cell.pokemonNameLabel.text = app.pokemon[indexPath.row].name
        return cell
    }
    
    
}

extension ViewController: mainVMDelegateOutputs{
    
    func reloadTableView() {
        self.pokemonTableView.reloadData()
    }
    
}


