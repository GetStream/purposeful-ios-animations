//
//  ScrollInThisDirection.swift
//  PurposefulSwiftUIAnimations
//
//  ANIMATION AND MEANING: Invitation to act
//  Scroll in this direction

//

import SwiftUI

struct ScrollInThisDirection: View {
    @State private var scroll = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .stroke(lineWidth: 2)
            .frame(width: 18, height: scroll ? 18 : 36)
            .opacity(scroll ? 0 : 1)
            .animation(.linear(duration: 1).delay(1.2).repeatForever(autoreverses: false), value: scroll)
            .animation(.interpolatingSpring(stiffness: 170, damping: 15).delay(1.1).repeatForever(autoreverses: false), value: scroll)
            .offset(y: scroll ? -200 : 0)
            .animation(.interpolatingSpring(stiffness: 170, damping: 15).delay(1).repeatForever(autoreverses: false), value: scroll)
            //.animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: false), value: scroll)
            .onAppear{
                scroll.toggle()
            }
    }
}

struct ScrollInThisDirection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollInThisDirection()
            .preferredColorScheme(.dark)
    }
}
