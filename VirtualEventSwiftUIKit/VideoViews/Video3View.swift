//
//  Video1View.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI
import AVKit

struct Video3View: View {
    @State var player = AVPlayer()
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "speaker02", withExtension: "mp4")!))
                .cornerRadius(8)
                //.overlay(RoundedRectangle(cornerRadius: 8)
                //.stroke(lineWidth: 4)
                //.foregroundColor(selectionColor))
            
            HStack(alignment: .top) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .frame(width: 139, height: 24)
                        .foregroundColor(.black)
                        .blendMode(.overlay)
                    
                    HStack {
                        Text("George Pentanen")
                        Image(systemName: "mic.slash.fill")
                            .foregroundColor(accentRed)
                       
                    }
                    .font(.caption)
                }
                Spacer()
                Image("Connection")
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: -6, trailing: 0))
        }
        .frame(width: 180, height: 160)
    }
}

struct Video3View_Previews: PreviewProvider {
    static var previews: some View {
        Video3View()
            .preferredColorScheme(.dark)
    }
}
