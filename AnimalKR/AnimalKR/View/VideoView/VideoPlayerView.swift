//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct VideoPlayerView: View {
    
    let video: Video
    
    var body: some View {
        NavigationView {
            YoutubeView(videoID: video.videoid)
            
        }
        .navigationBarTitle("\(video.name)", displayMode: .inline)
    }
}

#Preview {
        VideoPlayerView(video: Video.sampleVideoData)
}
