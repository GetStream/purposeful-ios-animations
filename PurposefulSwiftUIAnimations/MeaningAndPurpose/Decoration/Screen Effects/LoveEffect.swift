//
//  LoveEffect.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  LoveEffect: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0
    
    @State private var growing = false
    @State private var wiggling = false
    @State private var moving = false
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            
            Image("love")
                .resizable()
                .imageScale(.small)
                .aspectRatio(contentMode: .fit)
                .scaleEffect(growing ? 1.5 : 0, anchor: .bottom)
            //.rotationEffect(.degrees(wiggling ? -5 : 5), anchor: .bottom)
                .offset(y: moving ? -550 : 0)
                .onReceive(self.timer) { _ in
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation(.easeInOut(duration: 2)){
                            growing.toggle()
                        }
                        
                        withAnimation(.easeOut(duration: 2)){
                            wiggling.toggle()
                        }
                        
                        withAnimation(.easeInOut(duration: 2).delay(1.1)){
                            moving.toggle()
                        }
                    }
                }
            
            HStack {
                Spacer()
                Text("")
                    .font(.caption)
                    .textCase(.uppercase)
            }
            .frame(width: 340)
            
        }
    }
}

struct  LoveEffect_Previews: PreviewProvider {
    static var previews: some View {
        LoveEffect()
            .preferredColorScheme(.dark)
    }
}
