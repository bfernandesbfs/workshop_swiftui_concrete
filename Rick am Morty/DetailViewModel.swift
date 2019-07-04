//
//  DetailViewModel.swift
//  Rick am Morty
//
//  Created by leonel.menezes.lima on 04/07/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct DetailViewModel: Identifiable {
    var id: String {
        return title
    }
    
    var title: String
    var description: String
}
