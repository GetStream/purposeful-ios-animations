//
//  EchoEffect.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  BalloonsEffect: View {
    @State private var messageEffect = 0
    @State private var moving = false
    @State private var chromaRotate = false

    var body: some View {
        ZStack {
           
            if #available(iOS 15.0, *) {
                ZStack {
                    Image("baloonPurple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.55)
                        .zIndex(1)
                        .offset(y: moving ? -450 : 450)
                        .rotationEffect(.degrees(moving ? -5 : 5), anchor: moving ? .bottomLeading : .bottom)
                    Image("baloonGreen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.25)
                        .zIndex(4)
                        .offset(y: moving ? -460 : 460)
                        .rotationEffect(.degrees(moving ? -15 : 15), anchor: moving ? .bottom : .trailing)
                    Image("baloonOrangeDark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.5)
                        .zIndex(3)
                        .offset(y: moving ? -480 : 480)
                        .rotationEffect(.degrees(moving ? 15 : -15), anchor: moving ? .bottom : .trailing)
                    Image("baloonOrangeLight")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.2)
                        .zIndex(5)
                        .offset(y: moving ? -480 : 480)
                        .rotationEffect(.degrees(moving ? -45 : 15), anchor: moving ? .trailing: .leading)
                    Image("baloonRed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.5)
                        .zIndex(2)
                        .offset(y: moving ? -600 : 600)
                        .rotationEffect(.degrees(moving ? 0 : -90), anchor: moving ? .topLeading: .trailing)
                }
                .blendMode(.screen)
                //.hueRotation(.degrees(chromaRotate ? 0 : 200))
                .task {
                    withAnimation(.easeInOut(duration: 6).repeatForever(autoreverses: false)){
                        moving.toggle()
                        chromaRotate.toggle()
                    }
                   
                }
            } else {
                // Fallback on earlier versions
            }
           
            
            HStack {
                Spacer()
                Text("")
                    .font(.caption)
                .textCase(.uppercase)
            }
            .frame(width: 330)
            
        }
    }
}

struct   BalloonsEffect_Previews: PreviewProvider {
    static var previews: some View {
        BalloonsEffect()
            .preferredColorScheme(.dark)
    }
}
