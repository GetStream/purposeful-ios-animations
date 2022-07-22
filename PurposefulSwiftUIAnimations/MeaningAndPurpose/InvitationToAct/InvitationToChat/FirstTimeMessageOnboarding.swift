//
//  FirstTimeMessageOnboarding.swift
//
//  ANIMATION AND MEANING: No messages yet
//  A great way to encourage people to start their first conversation. 
//

import SwiftUI

struct FirstTimeMessageOnboarding: View {
    
    // 1. Animate From: Chaticon animations
    @State private var blinkLeftEye = true
    @State private var blinkRightEye = true
    @State private var trimMouth = false
    @State private var shake = false
    
    // 1. Animate From: Writing animation
    @State private var writing = false
    @State private var movingCursor = false
    @State private var blinkingCursor = false
    
    let cursorColor = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    
    let emptyChatColor = Color(#colorLiteral(red: 0.2997708321, green: 0.3221338987, blue: 0.3609524071, alpha: 1))
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            Spacer()
            VStack {
                    ZStack {
                        ChatIconView()
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
                    } // 2. Animate To
                    .onAppear {
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
                        
                        // Writing Animation
                        withAnimation(.easeOut(duration: 2).delay(1).repeatForever(autoreverses: true)) {
                           writing.toggle()
                            movingCursor.toggle()
                        }
                        
                        // Cursor Blinking Animation
                        withAnimation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true)) {
                        
                            blinkingCursor.toggle()
                        }
                    }
               
                ZStack(alignment: .leading) {
                    Text("Let’s start chatting!")
                        .font(.body)
                        .mask(Rectangle().offset(x: writing ? 0 : -150))
                    Rectangle()
                        .fill(cursorColor)
                        .opacity(blinkingCursor ? 0 : 1)
                        .frame(width: 2, height: 24)
                        .offset(x: movingCursor ? 148 : 0)
                }
                
                Text("How about sending your first message to a friend?")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    
            }
            Spacer()
            TabView { // Tab bar
                Color.clear
                    .tabItem {
                            Label("Chats", image: "message_icon")
                        }
                        
                Color.clear
                    .tabItem {
                        Label("Mentions", systemImage: "at")
                    }
            }.frame(width: .infinity, height: 73)
        } // All Views
        .padding()
    }
}

struct FirstTimeMessageOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        FirstTimeMessageOnboarding()
            .preferredColorScheme(.dark)
    }
}
