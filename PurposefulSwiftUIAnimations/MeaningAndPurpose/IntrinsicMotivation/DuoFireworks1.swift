//
//  DuoFireworks1.swift
//  PurposefulSwiftUIAnimations
//

//

import SwiftUI

struct DuoFireworks1: View {
    @State private var showFireworks = 0.0
    @State private var dismissFireworks = false
    let fire = #colorLiteral(red: 0.9014762044, green: 0.5862258077, blue: 0.2099165618, alpha: 1)
    
    var body: some View {
        Circle()
            .strokeBorder(style: StrokeStyle(lineWidth: dismissFireworks ? 4 : 16, lineCap: .butt, dash: [3, 25]))
            .animation(.easeOut(duration: 1).delay(0.1).repeatForever(autoreverses: false), value: showFireworks)
            .frame(width: 150, height: 150)
            .scaleEffect(showFireworks)
            .foregroundColor(Color(fire))
            .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: showFireworks)
            .onAppear {
                showFireworks = .random(in: 0..<2)
                dismissFireworks.toggle()
            }
    }
}

struct DuoFireworks1_Previews: PreviewProvider {
    static var previews: some View {
        DuoFireworks1()
            .preferredColorScheme(.dark)
    }
}
