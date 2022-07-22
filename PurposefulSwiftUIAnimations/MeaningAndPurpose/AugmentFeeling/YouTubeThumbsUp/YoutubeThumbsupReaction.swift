//
//  YoutubeThumbsupReaction.swift
//  PurposefulSwiftUIAnimations
//
//   ANIMATION AND MEANING: Augment emotion/feeling
//   YouTube Thumbs Up Animation
//

import SwiftUI

struct YoutubeThumbsupReaction: View {
    @State private var liked = 388
    var body: some View {
        VStack {
            Image(systemName: "hand.thumbsup")
                .font(.title)
            Text("\(liked)")
            
            
        }
    }
}

struct YoutubeThumbsupReaction_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeThumbsupReaction()
            .preferredColorScheme(.dark)
    }
}
