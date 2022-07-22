//
//  StepsCountingAnimation.swift
//
//  Number animation, created by Mateo on 4/19/22.
//
// https://stefanblos.com/posts/animating-number-changes/

/*
 Staging: Use animation to prepare the viewer for changes. Direct the user’s attention to focus on the important elements on the screen. For example, number changes (Count down and count up). You can also use fade-ins. Changing data on the screen: Number of steps taken in the StepsApp. If a number changes instantly from 0 to 100. It is easy to miss what just changed. Seeing what is changing prepares the viewer’s attention and directs their focus to what’s about to happen.
 */

import SwiftUI

// Two options to animate number while user only deal with `Int`:
// 1)
// Extend Int to be VectorArithmetic so it's animatable

extension Int: VectorArithmetic {
    mutating public func scale(by rhs: Double) {
        self = Int(Double(self) * rhs)
    }
    
    public var magnitudeSquared: Double {
        Double(self * self)
    }
}

struct AnimatableNumberModifier: AnimatableModifier {
    var animatableData: Int
    
    init(number: Int) {
        animatableData = number
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(
                Text("\(animatableData)")
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .font(.largeTitle)
            )
    }
}

// 2) or just animate `Double`, but use `Int` in init so user only deal with `Int`, not `Double`

extension View {
    func animatingOverlay(for number: Int) -> some View {
        modifier(AnimatableNumberModifier(number: number))
    }
}

struct StepsCountingAnimation: View {
    @State private var number: Double = 0.0
    
    var body: some View {
        ZStack { // Rings start
            Circle() // Inactive
                .stroke(style: .init(lineWidth: 8, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(.systemGray4))
                .frame(maxWidth: 300, maxHeight: 300)
            // Active
            Circle()
                .trim(from: 0, to: CGFloat(number/10000))
                .stroke(style: .init(lineWidth: 8, lineCap: .round, lineJoin: .round))
                .foregroundColor(.accentColor)
                .frame(maxWidth: 300, maxHeight: 300)
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
            
            VStack {
                Image(systemName: "figure.walk")
                    .font(.largeTitle)
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                Color.clear
                    .font(.largeTitle)
                    .frame(width: 128, height: 128)
                    .animatingOverlay(for: Int(number))
                
                Text("Today")
                    .foregroundColor(.secondary)
                Text("Goal 10 000")
                    .foregroundColor(.secondary)
                
            }
        } // Rings end
        .onAppear{
            withAnimation(.easeInOut(duration: 2)) {
                number = .random(in: 0.0 ..< 10000.0)
            }
        }
    }
}

struct StepsCountingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        StepsCountingAnimation()
            .preferredColorScheme(.dark)
    }
}
