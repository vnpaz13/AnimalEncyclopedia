//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct AppInfoLabel: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {

        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            
            Image(systemName: labelImage)
                .hTrailing()
        }

    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
