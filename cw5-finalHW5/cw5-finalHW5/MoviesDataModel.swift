//
//  MoviesDataModel.swift
//  Toy Story
//
//  Created by ghadeer alqattan on 7/6/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import Foundation



struct moviesModel {
    var movieName : String
    var movieReleaseDate: Int
    var characters: [String]
    var rating: Double
    var rated: String
    
    
}

var MoviesData = [
    moviesModel(movieName: "Lion King 1", movieReleaseDate: 1994, characters: ["Simba", "Pumbaa", "Timon", "Shenzi", "Zaza"], rating: 7.5, rated: "PG-13"),
    moviesModel(movieName: "Lion King 2", movieReleaseDate: 2004, characters: ["Simba", "Kiara", "Scar", "Nala", "Rafiki"], rating: 8, rated: "PG-13"),
    moviesModel(movieName: "Lion King 3", movieReleaseDate: 2019, characters: ["Timon", "Scar", "Simba", "Zazu", "Pumbaa"], rating: 8.3, rated: "PG-13")
    ]



