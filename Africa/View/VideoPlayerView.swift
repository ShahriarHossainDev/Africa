//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Shishir_Mac on 3/6/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    //let video: Video
    
    
    //MARK: - Body
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
        
    }
}

//MARK: - Preview

struct VideoPlayerView_Previews: PreviewProvider {
    //static let videos:[Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoPlayerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
