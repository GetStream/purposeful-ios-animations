//
//  FernBreathe.swift
//
//  ANIMATION AND MEANING: Guiding Users. In guided meditation, animations are normally used to guide users to complete tasks.

import SwiftUI

struct FernBreathe: View {
    
    @State private var angle = 0.0
    @State private var scale = 0.2
    @State private var breatheIn = true
    @State private var breatheOut = false
    let flowerColor = Color(#colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 1))
    
    var body: some View {
        VStack() {
            
                Text("Fern Breathe")
                    .font(.largeTitle)
            
            Spacer()
            Spacer()
        
            ZStack {
                ForEach(0 ..< 6) { item in
                    Circle()
                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(flowerColor)
                        .offset(y: -80)
                        .rotationEffect(.degrees(Double(item)) * angle)
                        .scaleEffect(CGFloat(scale))
                        .blendMode(.hardLight)
                        .animation(.easeInOut(duration: 4).delay(0.75).repeatForever(autoreverses: true), value: scale)
                        .onAppear() {
                            angle = 60.0
                            scale = 1
                        }
                }
            }
            
            Spacer()
            
            ZStack {
                Text("Breathe Out")
                    .opacity(breatheOut ? 0.2 : 1) // Opacity animation
                    .animation(.easeInOut(duration: 4).delay(0.75).repeatForever(autoreverses: true), value: breatheOut)
                    .onAppear {
                         breatheOut.toggle()
                }
                
                Text("Breathe In")
                    .opacity(breatheIn ? 0 : 1)
                    .scaleEffect(breatheIn ? 0.2 : 1, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .animation(.easeInOut(duration: 4).delay(0.75).repeatForever(autoreverses: true), value: breatheIn)
                    .onAppear() {
                        breatheIn.toggle()
                    }
            }
            .padding(.top, 50)
            
            Spacer()
            Spacer()
        }
    }
}

struct FernBreathe_Previews: PreviewProvider {
    static var previews: some View {
        FernBreathe()
            .preferredColorScheme(.dark)
    }
}
