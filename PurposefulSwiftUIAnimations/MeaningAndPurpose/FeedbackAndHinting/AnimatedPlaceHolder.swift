//
//  AnimatedPlaceHolder.swift.swift
//  PurposefulSwiftUIAnimations

/*  ANIMATION AND MEANING: Shimmering: FaceBook app, Slack, Twitter
    Leverage animations for usability, and give hints about what is  happening.*/

import SwiftUI

struct AnimatedPlaceHolder: View {
    @State private var shimmering = false
    
    let streamSnow = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    let streamGray = #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1)
    
    var body: some View {
        VStack {
            ForEach(0 ..< 8) { item in
                HStack {
                    Image(systemName: "bell.fill")
                        .font(.system(size: 54))
                    
                    VStack(alignment: .leading) {
                        Text("Tplaceholder")
                        Text("So cool")
                    }
                    .font(.title)
                }
                .foregroundStyle(
                    .linearGradient(
                        colors: [Color(streamSnow), Color(streamGray)],
                        startPoint: .leading,
                        endPoint: shimmering ? .trailing : .leading
                    )
                )
                .redacted(reason: .placeholder)
            }
            .animation(.easeOut(duration: 2).repeatForever(autoreverses: false), value: shimmering)
            .onAppear {
                shimmering.toggle()
            }
        }
    }
}

struct AnimatedPlaceHolder_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedPlaceHolder()
            .preferredColorScheme(.dark)
    }
}
