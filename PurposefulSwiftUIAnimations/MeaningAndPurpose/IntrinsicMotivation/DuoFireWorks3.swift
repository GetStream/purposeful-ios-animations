//
//  DuoFireworks3.swift
//  PurposefulSwiftUIAnimations
//
//

import SwiftUI

struct DuoFireworks3: View {
    @State private var showFireworks = 0.0
    @State private var dismissFireworks = false
    let fire = #colorLiteral(red: 0.7280497551, green: 0.4411738813, blue: 0.06536582857, alpha: 1)
    
    var body: some View {
        Circle()
            .strokeBorder(style: StrokeStyle(lineWidth: dismissFireworks ? 1 : 16, lineCap: .butt, dash: [3, 25]))
            .animation(.easeOut(duration: 1).delay(0.15).repeatForever(autoreverses: false), value: showFireworks)
            .frame(width: 150, height: 150)
            .scaleEffect(showFireworks)
            .rotationEffect(.degrees(-90))
            .foregroundColor(Color(fire))
            .animation(.easeOut(duration: 1).delay(0.1).repeatForever(autoreverses: false), value: showFireworks)
            .onAppear {
                showFireworks = 1
                dismissFireworks.toggle()
            }
    }
}

struct DuoFireworks3_Previews: PreviewProvider {
    static var previews: some View {
        DuoFireworks3()
            .preferredColorScheme(.dark)
    }
}
