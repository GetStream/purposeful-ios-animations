//
//  MediumContentView.swift
//  Medium's Cumulative Clap Reaction
//
//  ANIMATION AND MEANING: Expressing gratitude. For example, Medium’s Cumulative Clap Reaction

import SwiftUI

struct MediumContentView: View {
    @State private var didClap = 4
    @State private var moving = false
    @State private var showMediumSplash = false
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 54, height: 54)
                    .foregroundColor(.green)
                    .opacity(0.8)
                
                Text("+") + Text("\(didClap)")
                
                // Circular splash
                MediumSplashView()
                    .scaleEffect(showMediumSplash ? 1 : 0)
                    .rotationEffect(.degrees(showMediumSplash ? 30 : -15))
            }
            .opacity(moving ? 1 : 0)
            .offset(y: moving ? 0 : 50)
            
            HStack {
                Image(systemName: "hands.clap.fill")
                    .font(.largeTitle)
                    .onTapGesture {
                        didClap += 1
                        withAnimation(.easeOut(duration: 0.5).repeatCount(1, autoreverses: false)){
                            moving = true
                        }
                        
                        withAnimation(.easeInOut(duration: 0.6).delay(0.6).repeatCount(1, autoreverses: false)){
                            moving = false
                        }
                        
                        // Try different easings
                        /*
                         withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6)) {
                            showSplash = true
                        }
                        */
                        withAnimation(.easeOut) {
                            showMediumSplash = true
                        }
                        
                        withAnimation(.easeOut(duration: 0.05).delay(0.6).repeatCount(1, autoreverses: false)){
                            showMediumSplash = false
                        }
                        
                    }
                
                Text("\(didClap)")
            }
        }
    }
}

struct MediumContentView_Previews: PreviewProvider {
    static var previews: some View {
        MediumContentView()
            .preferredColorScheme(.dark)
    }
}
