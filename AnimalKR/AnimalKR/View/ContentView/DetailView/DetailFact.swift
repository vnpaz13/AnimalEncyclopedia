//
//  DetailFact.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct DetailFact: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // :  GroupBox
    }
}

#Preview {
    DetailFact(animal: Animal.sampleAnimal)
}
