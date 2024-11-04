//
//  VideoView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct VideoView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.videos) { video in
                    NavigationLink {
                        // destination
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        }
    }
}

#Preview {
    VideoView(vm: AnimalViewModel())
}
