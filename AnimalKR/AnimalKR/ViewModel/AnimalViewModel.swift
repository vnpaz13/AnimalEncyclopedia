//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import Foundation
import SwiftUI

class AnimalViewModel: ObservableObject {
    
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos : [Video] = Bundle.main.decode("videos.json")
    
    @Published var selectedAnimal: String = "tiger"
    
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumn: Double = 3.0
    
    init() {
        gridSwitch()
    }
    
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))    }
}

