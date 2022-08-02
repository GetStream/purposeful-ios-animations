//
//  DefaultEasingAnimation.swift
//
//  Number animation, created by Mateo on 4/19/22.
//
// https://stefanblos.com/posts/animating-number-changes/

/*
 Default: Default system timing function.
 Similar to EaseInOut and ensures that the timings of your animations match that of most system animations such as iOS, watchOS, macOS, tvOS.
 It works best for for onscreen animations

 */

import SwiftUI

// Two options to animate number while user only deal with `Int`:
// 1)
// Extend Int to be VectorArithmetic so it's animatable

extension Double: VectorArithmetic {
    mutating public func scaling(by rh: Double) {
        self = Double(Int(Double(self) * rh))
    }
    
    public var magnitudeSquare: Double {
        Double(self * self)
    }
}

struct AnimatableNumber: AnimatableModifier {
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
    func animating(for number: Int) -> some View {
        modifier(AnimatableNumber(number: number))
    }
}

struct DefaultEasingAnimation: View {
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
            withAnimation(.default) {
                number = .random(in: 0.0 ..< 10000.0)
            }
        }
    }
}

struct DefaultEasingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DefaultEasingAnimation()
            .preferredColorScheme(.dark)
    }
}
