//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct AppInfoContent: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack{
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                if content != nil {
                    // 1. name, content만 있는 경우
                    Text(content ?? "noValue")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                } else if (linkLabel != nil && linkDestination != nil) {
                    // 2. LinkLabel, LinkDestination이 있는 경우
                    Link(
                        destination: URL(string:"https://\(linkDestination!)")!) {
                            // label
                            Text(linkLabel!)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                .hTrailing()
                        }
                    
                    Image(systemName: "arrow.up.right.square").foregroundColor(.accentColor)
                    
                } else {
                    // 3. 아무것도 없는 경우
                    EmptyView()
                }
            }
        }
    }
}


#Preview {
    
    Group {
        AppInfoContent(name: "Sample", content: "VnPaz")
        AppInfoContent(name: "Sample2", linkLabel: "AD's Blog", linkDestination: "Ad's.info")
    }
   
}
