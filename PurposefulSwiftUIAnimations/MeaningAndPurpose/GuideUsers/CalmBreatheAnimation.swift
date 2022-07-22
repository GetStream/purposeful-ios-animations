//
//  CalmBreatheAnimation.swift
//  Breathe animation in the Calm App
//
//  ANIMATION AND MEANING: Guiding Users. In guided meditation, animations are normally used to guide users to complete tasks.
//

import SwiftUI

struct CalmBreatheAnimation: View {
    @State private var breathIn = false
    @State private var breathOut = false
    @State private var hold = true
    
    @State private var circuLarMotion = false
    @State private var displayHold = false
    @State private var displayBreathOut = false
    @State private var hideBreathOut = false
    @State private var hideBreathIn = false
    @State private var hideHold = false
    @State private var displaySecondHold = false
    @State private var hideSecondHold = false
    
    let grape = Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))
    let aqua = Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))
    let iron = Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1))
    let snow = Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1))
    let screenBackground = Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
    let fillGradient = LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    var body: some View {
        ZStack {
            ZStack {
                
                fillGradient
                    .clipShape(
                        Circle())
                    .frame(width: 340, height: 340)
                
                Circle()
                    .stroke(lineWidth: 5)
                    .frame(width: 370, height: 370)
                    .foregroundColor(iron)
                
                Circle()
                    .trim(from: 0, to: 1/4)
                    .stroke(lineWidth: 5)
                    .frame(width: 370, height: 370)
                    .foregroundColor(aqua)
                    .rotationEffect(.degrees(-90))
                
                Circle()
                    .trim(from: 0, to: 1/4)
                    .stroke(lineWidth: 5)
                    .frame(width: 370, height: 370)
                    .foregroundColor(grape)
                    .rotationEffect(.degrees(90))
                
                Capsule()
                    .trim(from: 1/2, to: 1)
                    .frame(width: 20, height: 25)
                    .foregroundColor(snow)
                    .offset(y: 187)
                
                Capsule()
                    .trim(from: 1/2, to: 1)
                    .frame(width: 20, height: 25)
                    .foregroundColor(snow)
                    .rotationEffect(.degrees(180))
                    .offset(y: -187)
                
                Capsule()
                    .trim(from: 1/2, to: 1)
                    .frame(width: 20, height: 25)
                    .foregroundColor(snow)
                    .rotationEffect(.degrees(-90))
                    .offset(x: 187)
                
                Capsule()
                    .trim(from: 1/2, to: 1)
                    .frame(width: 20, height: 25)
                    .foregroundColor(snow)
                    .rotationEffect(.degrees(90))
                    .offset(x: -187)
                
                
                ZStack {
                    Circle()  // Path
                        .stroke()
                        .frame(width: 360, height: 360)
                        .opacity(0)
                    
                    Capsule()  // Rotating capsule
                        .trim(from: 1/2, to: 1)
                        .frame(width: 25, height: 25)
                        .foregroundColor(aqua)
                        .offset(y: 187)
                        .rotationEffect(.degrees(circuLarMotion ? 360 : 0))
                        .onAppear() {
                            withAnimation(Animation.linear(duration: 16)) {
                                circuLarMotion = true
                            }
                        }
                }
                
            }.frame(width: 360, height: 360)
                .scaleEffect(breathIn ? 1 : 0.8)
                .scaleEffect(hold ? 1 : 1)
                .scaleEffect(breathOut ? 0.8 : 1)
            
                .onAppear() {
                    withAnimation(Animation.linear(duration: 4)){
                        breathIn.toggle()
                        
                        
                    }
                    
                    withAnimation(Animation.linear(duration: 4).delay(4)){
                        hold.toggle()
                    }
                    
                    withAnimation(Animation.linear(duration: 4).delay(8)){
                        breathOut.toggle()
                        
                    }
                    
                    withAnimation(Animation.linear(duration: 4).delay(12)){
                        hold.toggle()
                        
                    }
                    
                }
            ZStack {
                 Text("Breath Out")
                    .foregroundColor(snow)
                    .scaleEffect(1)
                    .opacity(displayBreathOut ? 1 : 0)
                    .opacity(hideBreathOut ? 0 : 1)
                    .onAppear(){
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(8)) {
                            displayBreathOut.toggle()
                        }
                        
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(12)) {
                            hideBreathOut.toggle()
                        }
                    }
                
                Text("Hold") // Second hold
                    .foregroundColor(snow)
                    .scaleEffect(1)
                    .opacity(displaySecondHold ? 1 : 0)
                    .opacity(hideSecondHold ? 0 : 1)
                    .onAppear(){
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(12)) {
                            displaySecondHold.toggle()
                        }
                        
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(16)) {
                            hideSecondHold.toggle()
                        }
                    }
                
                Text("Hold")
                    .foregroundColor(snow)
                    .scaleEffect(1)
                    .opacity(displayHold ? 1 : 0)
                    .opacity(hideHold ? 0 : 1)
                
                    .onAppear(){
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(4)) {
                            displayHold.toggle()
                        }
                        
                        withAnimation(Animation.easeInOut(duration: 0.4).delay(8)) {
                            hideHold.toggle()
                        }
                    }
                
                Text("Breath In")
                    .foregroundColor(snow)
                    .opacity(hideBreathIn ? 0 : 1)
                    .animation(.easeInOut(duration: 0.4).delay(4), value: hideBreathIn)
                    .onAppear(){
                        hideBreathIn.toggle()
                    }
            }
        }
    }
}

struct CalmBreatheAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CalmBreatheAnimation()
            .preferredColorScheme(.dark)
    }
}
