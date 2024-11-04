//
//  DetailHead.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct DetailHead: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    DetailHead(headingImage: "gear", headingText: "Head Title")
}
