//
//  ReactionsView.swift
//
//   ANIMATION AND MEANING: Augment emotion/feeling
//   Facebook Messenger Reactions Animation
//

import SwiftUI

struct ReactionsView: View {
    // 1. Define initial animation states
    // For reactions background
    @State private var showReactionsBG = 0
    
    // For heart icon
    @State private var showHeart = 0
    
    // For thumbsup icon
    @State private var showThumbsUp = 0
    @State private var rotateThumb = -45
    
    // For thumbsdown
    @State private var showThumbsDown = 0
    
    // For LOL
    @State private var showCrying = 0
   
    // For ?!
    @State private var showSad = 0
    
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let reactionsBGColor = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    var body: some View {
        
            ZStack { // Reactions background
                RoundedRectangle(cornerRadius: 28)
                    .frame(width: 216, height: 40)
                    .foregroundColor(Color(.systemGray6))
                // 3. Add property to animate
                    .scaleEffect(CGFloat(showReactionsBG), anchor: .topTrailing)
                // 4. Add animation modifier
                    .animation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.05), value: showReactionsBG)
                
                // Reaction icons
                HStack(spacing: 20) {
                    Image("heart")
                        .scaleEffect(CGFloat(showHeart))
                    Image("thumbup")
                        .scaleEffect(CGFloat(showThumbsUp))
                        .rotationEffect(.degrees(Double(rotateThumb)))
                    
                    Image("thumbdown")
                        .scaleEffect(CGFloat(showThumbsDown))
                        .rotationEffect(.degrees(Double(rotateThumb)))
                    
                    Image("crying")
                        .scaleEffect(CGFloat(showCrying))
                    Image("sad")
                        .scaleEffect(CGFloat(showSad))
                        .rotationEffect(.degrees(Double(showSad)))
                    
                }
                
            } // All reaction views
            .onAppear {
                withAnimation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.05))
                {
                    showReactionsBG = 1
                }
                
                withAnimation(.interpolatingSpring(mass: 1, stiffness: 170, damping: 8).delay(0.1))
                {
                    showHeart = 1
                }
                
                withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.2))
                {
                    showThumbsUp = 1
                    rotateThumb = 0
                }
                
                withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.3))
                {
                    showThumbsDown = 1
                    rotateThumb = 0
                }
                
                withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.4))
                {
                    showCrying = 1
                }
                
                withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.5))
                {
                    showSad = 1
                }
            }
    }
}

struct ReactionsView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionsView()
            .preferredColorScheme(.dark)
    }
}

