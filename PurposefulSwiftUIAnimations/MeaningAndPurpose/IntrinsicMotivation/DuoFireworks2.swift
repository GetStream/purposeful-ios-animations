//
//  DuoFireworks2.swift
//  PurposefulSwiftUIAnimations
//
//

import SwiftUI

struct DuoFireworks2: View {
    @State private var showFireworks = 0.0
    @State private var dismissFireworks = false
    let fire = #colorLiteral(red: 0.9014762044, green: 0.5862258077, blue: 0.2099165618, alpha: 1)
    
    var body: some View {
        Circle()
            .strokeBorder(style: StrokeStyle(lineWidth: dismissFireworks ? 4 : 16, lineCap: .butt, dash: [3, 25]))
            .animation(.easeOut(duration: 1).delay(0.2).repeatForever(autoreverses: false), value: showFireworks)
            .frame(width: 150, height: 150)
            .scaleEffect(showFireworks)
            .rotationEffect(.degrees(180))
            .foregroundColor(Color(fire))
            .animation(.easeOut(duration: 1).delay(0.1).repeatForever(autoreverses: false), value: showFireworks)
            .onAppear {
                showFireworks = 1
                dismissFireworks.toggle()
            }
    }
}

struct DuoFireworks2_Previews: PreviewProvider {
    static var previews: some View {
        DuoFireworks2()
            .preferredColorScheme(.dark)
    }
}
