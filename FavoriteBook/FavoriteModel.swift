//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Ashish Sharma on 12/26/2022.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

let goldenGate = FavoriteElements(name: "Golden Gate", imagename: "Golden Gate Bridge", description: "Great View")
let petronas = FavoriteElements(name: "Petronas Towers", imagename: "Petronas", description: "Beautiful at night")
let hawaMahal = FavoriteElements(name: "Hawa Mahal", imagename: "HawaMahal", description: "Saffron!")
let empireState = FavoriteElements(name: "Empire State Building", imagename: "Empire State", description: "Monumental")
let sydneyHarbor = FavoriteElements(name: "Sydney Harbor", imagename: "Sydney Harbor", description: "Pleasant")

let toVistPlaces = FavoriteModel(title: "Places to visit", elements: [goldenGate, petronas, hawaMahal])

let visitedPlaces = FavoriteModel(title: "Visited Places", elements: [empireState, sydneyHarbor])

let myFavorites = [toVistPlaces, visitedPlaces]
