//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct ExternalWebLink: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생동물 포털")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    // URL은 항상 옵셔널 바인딩 해버리기
                    Link(destination: (URL(string: animal.link)!)) {
                        Text(animal.name)
                    }
                    .foregroundColor(.accentColor)
                }
            }
        } // :  GroupBox
    }
}

#Preview {
    ExternalWebLink(animal: Animal.sampleAnimal)
}
