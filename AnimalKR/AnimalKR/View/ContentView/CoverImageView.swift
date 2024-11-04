//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct CoverImageView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach(vm.coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            }
        } // :  LOOP
        .tabViewStyle(.page)
        } // :  TAB
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
        .previewLayout(.fixed(width:400, height: 300))
}
