//
//  PokemonNetworking.swift
//  PokemonCase
//
//  Created by Furkan Erzurumlu on 23.03.2023.
//

import Foundation
import Alamofire

class PokemonNetworking {
    static let upComingPokemon = "https://pokeapi.co/api/v2/ability/?limit=20&offset=20"
    
    func getUpComingPokemon(completion: @escaping(Pokemon?)->()){
        let repuest = AF.request("https://pokeapi.co/api/v2/ability/?limit=20&offset=20")
        repuest.validate().responseDecodable(of: Pokemon.self) {[weak self] (response) in
            guard let pokemon = response.value else{
                completion(nil)
                print(response.error)
                return
            }
            completion(pokemon)
        }
    }
}
