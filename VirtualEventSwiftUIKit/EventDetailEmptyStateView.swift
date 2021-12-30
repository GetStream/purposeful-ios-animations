//
//  EventDetailEmptyStateView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 9/12/2021.
//

import SwiftUI
import AVKit

struct EventDetailEmptyStateView: View {
    @State var player = AVPlayer()
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    let emptyChatColor = Color(#colorLiteral(red: 0.2997708321, green: 0.3221338987, blue: 0.3609524071, alpha: 1))
    
    @State private var blinkLeftEye = true
    @State private var blinkRightEye = true
    @State private var trimMouth = false
    @State private var shake = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                Text("Data strategy")
                    .font(.footnote)
                Spacer()
                Image(systemName: "info.circle")
            }
            
            VStack {
                HStack {
                   VideoSelectedView()
                   Video1View()
                }
                HStack {
                    Video2View()
                    Video3View()
                }
            }
            
            Spacer()
            
            VStack {
                if #available(iOS 15.0, *) {
                    ZStack {
                        Image("emptystate")
                            .rotationEffect(.degrees(shake ? -5 : 5), anchor: .bottomTrailing)
                        VStack {
                            HStack(spacing: 16) {
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 8, height: 4)
                                    .scaleEffect(y: blinkRightEye ? 0.1 : 1)
                                    .opacity(blinkRightEye ? 0.1 : 1)
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 8, height: 4)
                                    .scaleEffect(y: blinkLeftEye ? 0.05 : 1)
                            }
                            Circle()
                                .trim(from: trimMouth ? 0.5 : 0.6, to: trimMouth ? 0.9 : 0.8)
                                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                                .frame(width: 16, height: 16)
                                .rotationEffect(.degrees(200))
                        }.foregroundColor(emptyChatColor)
                            .rotationEffect(.degrees(shake ? -5 : 5), anchor: .bottomLeading)
                    }
                    .task {
                        withAnimation(.easeInOut(duration: 1).repeatForever()){
                            blinkRightEye.toggle()
                        }
                        
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            blinkLeftEye.toggle()
                        }
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            trimMouth.toggle()
                        }
                        
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            shake.toggle()
                        }
                    }
                } else {
                    // Fallback on earlier versions
                }
                
                
                Text("No chat yet")
                    .font(.body)
                Text("Send a message to start the conversation.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                
                
                    
            }
            
            ComposeAreaView()
                .padding(.top, 74/2)
        } // All Views
        .padding()
    }
}

struct EventDetailEmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailEmptyStateView()
            .preferredColorScheme(.dark)
    }
}
