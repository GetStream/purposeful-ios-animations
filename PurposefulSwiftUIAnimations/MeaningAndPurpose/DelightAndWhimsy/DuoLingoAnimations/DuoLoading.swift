//
//  DuoLoading.swift
//  PurposefulSwiftUIAnimations

//  ANIMATION AND MEANING: Delight, Whimsy and brand style
//  System-provided loading indicators can sometimes feel out of context. So, create custom iOS (SwiftUI) loading animations to match your brand style and provide immersive UX like what Duolingo did for content loading
//

import SwiftUI

struct DuoLoading: View {
    @State private var isBlinking = false
    @State private var isWalking = false
    @State private var isTilting = false
    @State private var handMoving = false
    @State private var isShouting = false
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                MusicNotes()
                    .offset(x: 50)
                ZStack {
                    // Body
                    Image("body")
                    
                    HStack(spacing: 62) {
                        Image("rightHand")
                            .rotationEffect(.degrees(handMoving ? 25 : -15), anchor: .topTrailing)
                        Image("leftHand")
                            .rotationEffect(.degrees(handMoving ? 15 : -45), anchor: .topLeading)
                    }
                    
                    // Face
                    VStack {
                        Image("face")
                        Image("mouth")
                    }
                    .offset(x: 6)
                    
                    // Eyes, Nose and thoung
                    VStack(spacing: -12) {
                        
                        // Eyes
                        HStack(spacing: 32) {
                            ZStack { // Left eye
                                Image("eyelid")
                                Image("pipul")
                            }
                            
                            ZStack { // Right eye
                                Image("eyelid")
                                Image("pipul")
                            }
                        }
                        .scaleEffect(y: isBlinking ? 1 : 0)
                        .offset(x: 10)
                        
                        // Nose, thoung
                        VStack(spacing: -8) {
                            Image("nose")
                                .zIndex(1)
                            Image("thoung")
                                .scaleEffect(x: isShouting ? 1.4 : 1)
                                .offset(y: isShouting ? -3: 4 )
                        }
                        .padding(.bottom)
                        .offset(x: 10)
                    }
                }
                .rotationEffect(.degrees(isTilting ? -30 : 30))
                
                
                // Left and right hands
                HStack(spacing: 32) {
                    Image("legRight")
                        .rotationEffect(.degrees(isWalking ? 0 : -25), anchor: .bottomLeading)
                        .offset(x: isWalking ? 0 : 60)
                    
                    Image("legLeft")
                        .offset(x: isWalking ? 0 : -60)
                        .rotationEffect(.degrees(isWalking ? -25 : 0), anchor: .bottomLeading)
                        
                }
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.2).delay(0.25).repeatCount(2)) {
                    isBlinking.toggle()
                }
                
                withAnimation(.easeInOut(duration: 0.2).delay(0.6).repeatForever(autoreverses: true)) {
                    isTilting.toggle()
                }
                
                withAnimation(.easeInOut(duration: 0.2).delay(0.6).repeatForever(autoreverses: true)) {
                    handMoving.toggle()
                }
                
                withAnimation(.easeInOut(duration: 0.2).delay(0.6).repeatForever(autoreverses: true)) {
                    isWalking.toggle()
                }
                
                withAnimation(.easeInOut(duration: 0.2).delay(0.6).repeatForever(autoreverses: true)) {
                    isShouting.toggle()
                }
            }
            
            // Floor
            Image("floor")
        } // All views
    }
}

struct DuoLoading_Previews: PreviewProvider {
    static var previews: some View {
        DuoLoading()
            .preferredColorScheme(.dark)
    }
}
