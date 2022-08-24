
//
//  HamburgerToClose.swift
//  Hamburger to Close
//

import SwiftUI

struct ReduceMotionSpring: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    // Detect and respond to reduce motion
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    
    var body: some View {
        VStack(spacing: 14){
            
            Rectangle() // top
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(.degrees(isRotating ? 48 : 0), anchor: .leading)
            
            Rectangle() // middle
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .scaleEffect(isHidden ? 0 : 1, anchor: isHidden ? .trailing: .leading)
                .opacity(isHidden ? 0 : 1)
            
            Rectangle() // bottom
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(.degrees(isRotating ? -48 : 0), anchor: .leading)
        }
        .accessibilityElement(children: .combine)
        .accessibilityAddTraits(.isButton)
        .accessibilityLabel("Hamburger menu")
        .onTapGesture {
            withAnimation(reduceMotion ? .easeInOut : .interpolatingSpring(stiffness: 300, damping: 15)){
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

struct ReduceMotionSpring_Previews: PreviewProvider {
    static var previews: some View {
        ReduceMotionSpring()
            .preferredColorScheme(.dark)
    }
}
