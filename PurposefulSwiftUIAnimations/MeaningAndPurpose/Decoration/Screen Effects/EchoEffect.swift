//
//  EchoEffect.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  EchoEffect: View {
    let outgoingBubble = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0
    @State private var echoing = false
    @State private var scalingUp = false
    @State private var scalingFromTop = false
    @State private var scalingDown = false
    @State private var writing = false
    @State private var composing = false
    @State private var rotatingTail = false

    var body: some View {
        if #available(iOS 15.0, *) {
            VStack {
                HStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("outgoingTail")
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                        RoundedRectangle(cornerRadius: 16)
                            .fill(outgoingBubble)
                            .frame(width: 150, height: 32)
                            .overlay(
                                Text("Hi, how are you?")
                                    .font(.body)
                                    .mask(Rectangle().offset(x: writing ? 0 : -130))
                            )
                    }
                    .offset(y: scalingUp ? 150 : -50)
                    .rotationEffect(.degrees(scalingUp ? 0 : 360))
                    .scaleEffect(scalingUp ? 1.5 : 0, anchor: scalingUp ? .top : .bottomTrailing )
                } // Bubble
                
                Spacer()
                
                HStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("outgoingTail")
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                        RoundedRectangle(cornerRadius: 16)
                            .fill(outgoingBubble)
                            .frame(width: 150, height: 32)
                            .overlay(
                                Text("Hi, how are you?")
                                    .font(.body)
                                    .mask(Rectangle().offset(x: composing ? 0 : -130))
                            )
                    }
                    .offset(y: scalingFromTop ? 150 : -50)
                    .scaleEffect(scalingFromTop ? 2 : 0, anchor: scalingFromTop ? .top : .bottom )
                } // Bubble
               
                Spacer()
                
                HStack {
                    Spacer()
                    ZStack(alignment: .bottomTrailing) {
                        Image("outgoingTail")
                            .rotationEffect(.degrees(rotatingTail ? -5 : 5), anchor: .topLeading)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: -2, trailing: -5))
                        RoundedRectangle(cornerRadius: 16)
                            .fill(outgoingBubble)
                            .frame(width: 150, height: 32)
                            .overlay(Text("Hi, how are you?").font(.body))
                    }
                    .offset(y: scalingDown ? 0 : -50)
                    .scaleEffect(scalingDown ? 0 : 1.5, anchor: scalingDown ? .topLeading : .bottomTrailing )
                } // Bubble
            } // All views
            .padding()
            .task {
                withAnimation(.easeInOut(duration: 1).delay(1.2).repeatForever(autoreverses: true)) {
                    scalingUp.toggle()
                }
                
                withAnimation(.easeOut(duration: 2).delay(2.4).repeatForever(autoreverses: false)) {
                   writing.toggle()
                }
                
                withAnimation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true)) {
                    scalingFromTop.toggle()
                }
                
                withAnimation(.easeOut(duration: 2).delay(2).repeatForever(autoreverses: false)) {
                   composing.toggle()
                }
                
                withAnimation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true)) {
                    scalingDown.toggle()
                }
                
                withAnimation(.easeInOut(duration: 0.2).repeatForever(autoreverses: true)) {
                   rotatingTail.toggle()
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct  EchoEffect_Previews: PreviewProvider {
    static var previews: some View {
        EchoEffect()
            .preferredColorScheme(.dark)
    }
}
