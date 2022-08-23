//
//  SlamEffect.swift
//  iMessageClone
//
// The scale down animation uses custom timing(easeInExpo) to create the fast, energetic and exagerated effect (slam)

import SwiftUI

struct  SlamEffect: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0
    @State private var scalingUpGently = false
    @State private var scalingDownGently = false
    
    var body: some View {
        HStack {
            ZStack(alignment: .bottomTrailing) {
                Image("outgoingTail")
                    .rotationEffect(.degrees(scalingUpGently ? -5 : 5), anchor: .topLeading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                RoundedRectangle(cornerRadius: 16)
                    .fill(outgoingBubble)
                    .frame(width: 150, height: 32)
                    .overlay(Text("Hi, how are you?")
                        .font(.body)
                        .scaleEffect(scalingDownGently ? 1.8 : 1)
                        .scaleEffect(scalingUpGently ? 0.6 : 1)
                    )
            }
            .offset(y: scalingUpGently ? 0 : -50)
            .scaleEffect(scalingUpGently ? 1.25 : 0, anchor: scalingUpGently ? .bottomTrailing : .bottomLeading)
            .scaleEffect(scalingDownGently ? 0.8 : 1.5, anchor: scalingDownGently ? .trailing : .leading)
            .task {
                withAnimation(.timingCurve(0.7, 0, 0.84, 0).delay(1)) {
                    scalingUpGently.toggle()
                }
                
                
                // The scale down animation uses custom timing(easeInExpo) to create the fast, energetic and exagerated effect (slam)
                withAnimation(.timingCurve(0.7, 0, 0.84, 0).delay(1.1)) {
                    scalingDownGently.toggle()
                }
            }
        }
        .padding()
    }
}

struct SlamEffect_Previews: PreviewProvider {
    static var previews: some View {
        SlamEffect()
            .preferredColorScheme(.dark)
    }
}
