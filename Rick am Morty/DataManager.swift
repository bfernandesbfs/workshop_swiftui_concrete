//
//  DataManager.swift
//  Rick am Morty
//
//  Created by leonel.menezes.lima on 04/07/19.
//  Copyright © 2019 bls. All rights reserved.
//

import Foundation

struct DataManager {
    
    let session = URLSession()
    
    func listCharacters(completion: Result<[Character],Error>) {
        let request = URLRequest(url: URL(string: "https://rickandmortyapi.com/api/character")!)
        self.session.dataTask(with: request) { (data, response, error) in
            
        }.resume()
    }
}
