//
//  ContentView.swift

/* ANIMATION PRINCIPLE: Follow-through
 Follow-through using Spring Animations: Following the principle of physics to create soft and imprecise movements. How do we overshoot the resting state?
 
 EXAMPLES:
     - Reactions in the Messages apps
     - Stream Chat iOS
*/

import SwiftUI

struct InboundMessageView: View {
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
    @State private var showLOLReaction = 0
   
    // For ?!
    @State private var showWutReaction = 0
    
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let reactionsBGColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    
    var body: some View {
        ZStack {
            /*Image("inboundbg")
                .blur(radius: 5)*/
            VStack(alignment: .leading) { // Container for Reactions, Inbound Message, Context Menu
                
                ZStack { // Reactions background
                    RoundedRectangle(cornerRadius: 28)
                        .frame(width: 216, height: 40)
                        .foregroundColor(reactionsBGColor)
                        // 3. Add property to animate
                        .scaleEffect(CGFloat(showReactionsBG), anchor: .topTrailing)
                        // 4. Add animation modifier
                        .animation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.05), value: showReactionsBG)
                    
                    // Reaction icons
                    HStack(spacing: 20) {
                        Image("like")
                            .scaleEffect(CGFloat(showHeart))
                        Image("thumbs_up")
                            .scaleEffect(CGFloat(showThumbsUp))
                            .rotationEffect(.degrees(Double(rotateThumb)))
                            
                        Image("thumbs_down")
                            .scaleEffect(CGFloat(showThumbsDown))
                            .rotationEffect(.degrees(Double(rotateThumb)))
                            
                        Image("lol")
                            .scaleEffect(CGFloat(showLOLReaction))
                        Image("wut_reaction")
                            .scaleEffect(CGFloat(showWutReaction))
                           
                    }
                   
                } // All reaction views
                    HStack(alignment: .bottom) {
                        Image("user_kimmy")
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            ZStack(alignment: .bottomLeading) {
                                RoundedRectangle(cornerRadius: 21)
                                    .frame(width: 272, height: 56)
                                    .overlay(
                                        Text("Ladies and gentlemen, we have everything")
                                            .foregroundColor(.white)
                                    )
                                Rectangle()
                                    .frame(width: 20, height: 21)
                            }
                            // Inbound Message Bubble
                            .foregroundColor(inboundBubbleColor)
                                
                            Text("Is that Stream Chat?. Fabulous  18.37")
                                .font(.footnote)
                            .foregroundColor(.secondary)
                        }
                    } // 2. Add animation trigger
                    .onLongPressGesture{
                        showReactionsBG = 1
                        
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.1))
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
                            showLOLReaction = 1
                        }
                        
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 8).delay(0.5))
                        {
                            showWutReaction = 1
                        }
                    }
        
            } // Container for Reactions, Inbound Message, Context Menu
    }
}

struct InboundMessageView_Previews: PreviewProvider {
    static var previews: some View {
        InboundMessageView()
            .preferredColorScheme(.dark)
    }
}
}
