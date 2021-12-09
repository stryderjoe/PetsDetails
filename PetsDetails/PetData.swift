//
//  PetData.swift
//  PetsDetails
//
//  Created by PMStudent on 12/7/21.
//

import Foundation

struct PetData: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let datelost: String
    let location: String
    let breed: String
    let color: String
    let size: String
    let gender: String
    let age: String
    let species: String
    let status: String
}
