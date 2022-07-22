//
//  ConfettiEffect.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  ConfettiEffect: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
   
    @State private var spinning = false
    @State private var falling = false

    var body: some View {
        ZStack {
            if #available(iOS 15.0, *) {
                ZStack {
                    VStack {
                        HStack {
                            Image("rect")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .rotation3DEffect(.degrees(45), axis: (x: 1, y: 1, z: 0))
                                .offset(y: falling ? 400 : -400)
                            
                            Image("s")
                                .rotationEffect(.degrees(spinning ? 0 : -360))
                                .offset(y: falling ? 400 : -400)
                                
                            Image("spiral")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .offset(y: falling ? 400 : -400)
                            
                            Image("oval")
                                .offset(y: falling ? 400 : -400)
                                .rotationEffect(.degrees(spinning ? -5 : 6))
                                .rotation3DEffect(.degrees(1), axis: (x: 1, y: -1, z: 0))
                        }
                        .hueRotation(.degrees(spinning ? 270 : -150))
                        
                        VStack {
                            Image("oval")
                                .offset(y: falling ? 500 : -500)
                                .rotationEffect(.degrees(spinning ? -5 : 6))
                                .rotation3DEffect(.degrees(1), axis: (x: 1, y: -1, z: 0))
                           
                            
                            Image("s")
                                .rotationEffect(.degrees(spinning ? 0 : -360))
                                .offset(y: falling ? 600 : -600)
                                
                            Image("rect")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .offset(y: falling ? 700 : -700)
                            
                            
                            Image("spiral")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .offset(y: falling ? 800 : -800)
                        }
                        .hueRotation(.degrees(spinning ? -45 : 300))
                        
                        VStack {
                            Image("rect")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .rotation3DEffect(.degrees(60), axis: (x: 0, y: 1, z: 0))
                                .offset(y: falling ? 400 : -400)
                            
                            Image("s")
                                .rotationEffect(.degrees(spinning ? 0 : -360))
                                .offset(y: falling ? 400 : -400)
                                
                            Image("spiral")
                                .rotationEffect(.degrees(spinning ? -360 : 0))
                                .offset(y: falling ? 400 : -400)
                            
                            Image("oval")
                                .rotation3DEffect(.degrees(1), axis: (x: 1, y: -1, z: 0))
                                .offset(y: falling ? 400 : -400)
                                .rotationEffect(.degrees(spinning ? -5 : 6))
                        }
                        .hueRotation(.degrees(spinning ? 270 : 150))
                    }
                }
                .task {
                    withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                        spinning.toggle()
                        falling.toggle()
                    }
                }
            } else {
                // Fallback on earlier versions
            }
            
            
        }
    }
}

struct ConfettiEffect_Previews: PreviewProvider {
    static var previews: some View {
        ConfettiEffect()
            .preferredColorScheme(.dark)
    }
}
