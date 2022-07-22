//
//  DuolingoLessonComplete.swift
//  PurposefulSwiftUIAnimations
//

//  ANIMATION AND MEANING: Intrinsic motivation
//  Intrinsic motivation (mostly in gaming apps.). For example, showing confetti or fireworks animation after users achieve something great.  Duolingo does a great job to display fireworks once you complete a leson.
//

import SwiftUI

struct DuolingoLessonComplete: View {
    @State private var isBlinking = false
    @State private var isShouting = false
    
    var body: some View {
        ZStack {
            CelebrationEffect()
            VStack(spacing: 0) {
                VStack {
                    VStack {
                        HStack {
                            DuoFireworks1()
                                .scaleEffect(0.5)
                                .foregroundColor(.red)
                            Spacer()
                        }
                        Text("Lesson Complete")
                            .font(.largeTitle)
                            .overlay(DuoFireworks3().scaleEffect(0.6))
                    }
                    
                    Spacer()
                    
                    ZStack {
                        // Body
                        Image("body")
                        
                        HStack(spacing: 82) {
                            Image("rightHand")
                            Image("leftHand")
                        }
                        
                        // Face
                        VStack {
                            Image("face")
                            Image("mouth")
                        }
                        
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
                            
                            // Nose, thoung
                            VStack(spacing: -8) {
                                Image("nose")
                                    .zIndex(1)
                                Image("thoung")
                                    .scaleEffect(x: isShouting ? 1.4 : 1)
                                    .offset(y: isShouting ? -3: 4 )
                            }
                            .padding(.bottom)
                        }
                    }
                   
                    // Left and right hands
                    HStack(spacing: 32) {
                        Image("legRight")
                        Image("legLeft")
                    }
                } // All views
                .onAppear{
                    withAnimation(.easeOut(duration: 0.2).delay(0.25).repeatCount(2)) {
                        isBlinking.toggle()
                    }
                    
                    withAnimation(.easeInOut(duration: 1).delay(0.5).repeatForever(autoreverses: true)) {
                        isShouting.toggle()
                    }
                    
                }
                
                // Floor
                Image("floor")
                
                HStack {
                    Spacer()
                    DuoFireworks2()
                        .scaleEffect(0.5)
                }
            }
        } // All views
    }
}

struct DuolingoLessonComplete_Previews: PreviewProvider {
    static var previews: some View {
        DuolingoLessonComplete()
            .preferredColorScheme(.dark)
    }
}
