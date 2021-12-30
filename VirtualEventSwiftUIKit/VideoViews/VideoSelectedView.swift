//
//  VideoSelectedView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI
import AVKit

struct VideoSelectedView: View {
    @State var player = AVPlayer()
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "speakermain", withExtension: "mp4")!))
                .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 4)
                .foregroundColor(selectionColor))
            
            HStack(alignment: .top) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .frame(width: 139, height: 24)
                        .foregroundColor(.black)
                        .blendMode(.overlay)
                    
                    HStack {
                        Text("Lita Sherman")
                        Image(systemName: "text.alignleft")
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(selectionColor)
                        Image(systemName: "pin.fill")
                            .rotationEffect(.degrees(45))
                    }
                    .font(.caption)
                }
                Spacer()
                Image("Connection")
            }
            .padding(EdgeInsets(top: 0, leading: 2, bottom: -20, trailing: 2))
        }
        .frame(width: 180, height: 160)
    }
}

struct VideoSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        VideoSelectedView()
            .preferredColorScheme(.dark)
    }
}
