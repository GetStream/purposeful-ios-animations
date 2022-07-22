
//
//  HamburgerToClose.swift
//  Hamburger to Close
//
/*
 ANIMATION AND MEANING: State changes
 - State changes: Animation can be used appropriately to indicate that a UI element has changed to a different state.
     - For example, Morphing a hamburger menu seamlessly into a close icon. This communicates the difference between the menu and close/cancel modes. Create a bouncy hamburger menu to close icon transition
 */

import SwiftUI

struct HamburgerToClose: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
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
        .onTapGesture {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)){
                isRotating.toggle()
                isHidden.toggle()
            }
        }
        
    }
}

struct HamburgerToClose_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerToClose()
            .preferredColorScheme(.dark)
    }
}
