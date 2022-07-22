//
//  SplashView.swift

//  ANIMATION AND MEANING: Expressing gratitude. For example, Medium’s Cumulative Clap Reaction
//

import SwiftUI

struct MediumSplashView: View {
    @State private var innerGap = true
    let streamBlue = Color(#colorLiteral(red: 0, green: 0.3725490196, blue: 1, alpha: 1))
    
    var body: some View {
        ZStack {
            ForEach(0..<8) {
                Circle()
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.green, .red],
                            startPoint: .bottom,
                            endPoint: .leading
                        )
                    )
                    .frame(width: 6, height: 6)
                    .offset(x: innerGap ? 50 : 0)
                    .rotationEffect(.degrees(Double($0) * 45))
                    .hueRotation(.degrees(300))
            }
            
            ForEach(0..<8) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.green, streamBlue],
                            startPoint: .bottom,
                            endPoint: .leading
                        )
                    )
                    .offset(x: innerGap ? 52 : 0)
                    .rotationEffect(.degrees(Double($0) * 45))
                    .hueRotation(.degrees(120))
                
            }
            .rotationEffect(.degrees(12))
        }
    }
}

struct MediumSplashView_Previews: PreviewProvider {
    static var previews: some View {
        MediumSplashView()
            .preferredColorScheme(.dark)
    }
}
