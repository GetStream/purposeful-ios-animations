//
//  CelebrationEffect.swift
//  iMessageClone
//
//  Created by Amos from getstream.io 18.12.2021.
//

import SwiftUI

struct  CelebrationEffect: View {
    @State private var messageEffect = 0

    @State private var acceleration1 = false
    @State private var emitterSize = 0
    @State private var birth = 1
    
    var body: some View {
        ZStack {
                ZStack {
                    ForEach(0 ..< 12) { item in
                       
                            VStack(spacing: 100) {
                                Capsule()
                                    .frame(width: 6, height: 12)
                                    .foregroundColor(.teal)
                                    .hueRotation(.degrees(Double(item) *  30))
                                    .blendMode(.exclusion)
                                    .scaleEffect(CGFloat(emitterSize))
                                    .offset(y: CGFloat(acceleration1 ? 300 : 5))
                                    .rotationEffect(.degrees(Double(item) * 30), anchor: .bottom)
                                    .animation(.easeInOut(duration: 2).repeatForever(autoreverses: false), value: birth)
                                    .opacity(Double(birth))
                                   
                                
                                Capsule()
                                    .frame(width: 4, height: 8)
                                    .foregroundColor(.orange)
                                    .hueRotation(.degrees(Double(item) *  30))
                                    .blendMode(.exclusion)
                                    .scaleEffect(CGFloat(emitterSize))
                                    .offset(y: CGFloat(acceleration1 ? 300 : 5))
                                    .rotationEffect(.degrees(Double(item) * 30), anchor: .bottom)
                                    .animation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false))
                                    .opacity(Double(birth))
                                    .animation(Animation.easeIn.delay(1.5).repeatForever(autoreverses: false))
                                
                                Capsule()
                                    .frame(width: 6, height: 12)
                                    .foregroundColor(.cyan)
                                    .hueRotation(.degrees(Double(item) *  CGFloat.pi * 2.0))
                                    .blendMode(.exclusion)
                                    .scaleEffect(CGFloat(emitterSize))
                                    .offset(y: CGFloat(acceleration1 ? 300 : 5))
                                    .rotationEffect(.degrees(Double(item) * 30), anchor: .bottom)
                                    .animation(Animation.easeIn(duration: 2).repeatForever(autoreverses: false))
                                    .opacity(Double(birth))
                                    .animation(Animation.easeInOut.delay(1.5).repeatForever(autoreverses: false))
                                
                                Capsule()
                                    .frame(width: 4, height: 8)
                                    .foregroundColor(.red)
                                    .hueRotation(.degrees(Double(item) *  30))
                                    .blendMode(.exclusion)
                                    .scaleEffect(CGFloat(emitterSize))
                                    .offset(y: CGFloat(acceleration1 ? 300 : 5))
                                    .rotationEffect(.degrees(Double(item) * 30), anchor: .bottom)
                                    .animation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false))
                                    .opacity(Double(birth))
                                    .animation(Animation.easeIn.repeatForever(autoreverses: false))
                            }
                            
                    }
                }
                .onAppear{
                    withAnimation
                    {
                       acceleration1 = true
                       emitterSize = 1
                       birth = 0
                    }
                }
            
            Text("")
                .font(.caption)
            .textCase(.uppercase)
        }
    }
}

struct  CelebrationEffect_Previews: PreviewProvider {
    static var previews: some View {
        CelebrationEffect()
            .preferredColorScheme(.dark)
    }
}
