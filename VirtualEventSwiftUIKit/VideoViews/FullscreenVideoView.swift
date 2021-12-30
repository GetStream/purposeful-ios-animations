//
//  FullScreenVideoView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI
import AVKit

struct FullScreenVideoView: View {
    
    @State var player = AVPlayer()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .bottomLeading) {
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "speaker1", withExtension: "mp4")!))
                    .ignoresSafeArea()
                
                HStack {
                    Spacer()
                    Image(systemName: "message")
                    Text("Tap anywhere to show the chat")
                        .font(.subheadline)
                    Image(systemName: "message")
                    Spacer()
                }
            }
        }
    }
}

struct FullScreenVideoView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenVideoView()
            .preferredColorScheme(.dark)
    }
}
