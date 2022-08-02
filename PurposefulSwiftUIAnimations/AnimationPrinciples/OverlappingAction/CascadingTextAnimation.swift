//
//  ChainedSpring.swift
//  HundredDaysOfSwiftUI
//
/* ANIMATION PRINCIPLE: Overlapping Action
 Overlapping Action/ Sequence and stagger:**
 - Cascading and offsetting similar elements animating in the same way.
 - Distribute their entrances over time instead of animating them at once
 - Example: Cascading text animation
 */
//

import SwiftUI

struct CascadingTextAnimation: View {
    
    let letters = Array("SpringAnimation")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .hueRotation(.degrees(enabled ? 0 : 150))
                    .rotationEffect(.degrees(enabled ? 0 : 360), anchor: .bottomLeading)
                    .border(.white)
                    .cornerRadius(2)
                    .offset(dragAmount)
                    .animation(.interpolatingSpring(stiffness: 170, damping: 5).delay(Double(num) / 20), value: dragAmount)
            }
        }
        .padding()
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
            // _ ignore the value coming in this time
                .onEnded { _ in
                    withAnimation{
                        dragAmount = .zero
                        enabled.toggle()
                    }
                }
        )
    }
}

struct CascadingTextAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CascadingTextAnimation()
            .preferredColorScheme(.dark)
    }
}
