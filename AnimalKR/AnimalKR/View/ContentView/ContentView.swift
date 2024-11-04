//
//  ContentView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var vm : AnimalViewModel
    
    var body: some View {
      
        NavigationView {
            List{
                
                CoverImageView(vm: vm)
                    .frame(height: CGFloat.screenHeight * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // Animal List
                ForEach(vm.animals) { animal in
                    NavigationLink {
                        
                        // destination
                        DetailView(animal: animal)
                    } label: {
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    }
                }
                CreditView()
            }
            .listStyle(.plain)
            .navigationTitle("멸종위기 동물들")
        }
    
    }
}


#Preview {
    ContentView(vm: AnimalViewModel())
}
