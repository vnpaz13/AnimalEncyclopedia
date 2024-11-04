//
//  CreditView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        
        VStack {
            Text("""

    Copyright @ VnPaz
    All right reserved
    Created by SwiftUI with MVVM architecture

""")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

#Preview {
    CreditView()
}
