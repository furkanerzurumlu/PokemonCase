//
//  Pokemon.swift
//  PokemonCase
//
//  Created by Furkan Erzurumlu on 23.03.2023.
//

import Foundation

// MARK: - Pokemon
struct Pokemon: Codable {
    let count: Int
    let next, previous: String
    let results: [AllPokemons]
}

// MARK: - Result
struct AllPokemons: Codable {
    let name: String
    let url: String
}
