//
//  HomeView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView {
            
            // 1. ContentView()
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            // 2. VideoView()
            VideoView(vm: vm)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            // 3. GalleryView
            GalleryView(vm: vm)
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            // 4. AppInfoView
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("정보")
                }
        }
    }
}

#Preview {
    HomeView()
}
