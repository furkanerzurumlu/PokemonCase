//
//  MainVM.swift
//  PokemonCase
//
//  Created by Furkan Erzurumlu on 23.03.2023.
//

import Foundation

protocol mainVMProtocol: AnyObject{
    
}

protocol mainVMDelegate: mainVMProtocol{
    var delegate: mainVMDelegateOutputs? {get set}
    var data: [AllPokemons] {get set}
    func getUpComingData()
}

protocol mainVMDelegateOutputs: AnyObject{

    func reloadTableView()
}



class mainVM: mainVMDelegate{
    var delegate: mainVMDelegateOutputs?
    var data: [AllPokemons] = []
    var network: PokemonNetworking = PokemonNetworking()
    
    func getUpComingData() {
        network.getUpComingPokemon{ [weak self] (response) in
            if let response = response {
                self?.data = response.results
                self?.delegate?.reloadTableView()
            }
            
        }
    }
    
    
}
