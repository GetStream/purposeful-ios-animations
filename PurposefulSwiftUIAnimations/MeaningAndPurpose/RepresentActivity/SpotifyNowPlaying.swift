//
//  SpotifyNowPlaying.swift
//  Spotify Now Playing Animation
//  SwiftUI Animation Challenge 1
//
//  ANIMATION AND MEANING: RA visual representation of audio signals/ now playing

import SwiftUI

struct SpotifyNowPlaying: View {
    @State private var trim = 0.0
   
    var body: some View {
        VStack(alignment: .leading) {
            Text("Now playing")
            HStack {
                RoundedRectangle(cornerRadius: 3)
                    .fill(.indigo.gradient)
                    .frame(width: 12, height: 64)
                    .scaleEffect(y: trim, anchor: .bottom)
                    //.scaleEffect(y: drawingHeight ? 0.8 : 1, anchor: .bottom)
                    
                    .animation(.default.repeatForever(), value: trim)
                RoundedRectangle(cornerRadius: 3)
                    .fill(.indigo.gradient)
                    .frame(width: 12, height: 64)
                    .scaleEffect(y: trim, anchor: .bottom)
                    .animation(.easeOut.repeatForever(), value: trim)
                RoundedRectangle(cornerRadius: 3)
                    .fill(.indigo.gradient)
                    .frame(width: 12, height: 64)
                    .scaleEffect(y: trim, anchor: .bottom)
                    .animation(.easeIn.repeatForever(), value: trim)
                RoundedRectangle(cornerRadius: 3)
                    .fill(.indigo.gradient)
                    .frame(width: 12, height: 64)
                    .scaleEffect(y: trim, anchor: .bottom)
                    .animation(.easeOut.repeatForever(), value: trim)
                RoundedRectangle(cornerRadius: 3)
                    .fill(.indigo.gradient)
                    .frame(width: 12, height: 64)
                    .scaleEffect(y: trim, anchor: .bottom)
                    .animation(.easeInOut.repeatForever(), value: trim)
            }
            .onAppear{
                trim = .random(in: 0.5..<1)
        }
        }
    }
}

struct SpotifyNowPlaying_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyNowPlaying()
            .preferredColorScheme(.dark)
    }
}
