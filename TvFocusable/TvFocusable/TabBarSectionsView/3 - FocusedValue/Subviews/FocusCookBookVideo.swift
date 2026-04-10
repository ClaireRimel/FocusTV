//
//  FocusCookBookVideo.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI
import AVKit

struct FocusCookBookVideo: View {
    private var player: AVPlayer?
    
    init() {
        // Ensure to update the filename and extension correctly
        if let filePath = Bundle.main.path(forResource: "focus_cookbook_mac", ofType: "mov") {
            let fileURL = URL(fileURLWithPath: filePath)
            player = AVPlayer(url: fileURL)
        }
    }
    
    var body: some View {
        VStack {
            if let player = player {
                VideoPlayer(player: player)
                    .onAppear {
                        player.play()
                    }
                    .onDisappear {
                        player.pause()
                    }
            } else {
                Text("Failed to load the video.")
            }
        }
    }
}

#Preview {
    FocusCookBookVideo()
}
