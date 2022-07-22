//
//  DoubleClickToInstall.swift
//  PurposefulSwiftUIAnimations
//
//  ANIMATION AND MEANING: Attention
//  iOS AppStore (Double-Click to Install): A great example of attracting users’ attention using animation.
//

import SwiftUI

struct DoubleClickToInstall: View {
    @State private var isHitting = 8.0
    
    var body: some View {
        HStack {
            Spacer()
            
            HStack {
                VStack(alignment: .trailing) {
                    Text("Double-Click")
                    Text("to Install")
                }
                .font(.title2)
                
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 24, height: 96)
            }
            .offset(x: isHitting)
            .onAppear{
                withAnimation(.interactiveSpring(
                    response: 0.15*2,
                    dampingFraction: 0.2,
                    blendDuration: 0)
                    .repeatForever(autoreverses: false)) {
                        isHitting = 15.0
                    }
            }
        }
        
    }
}

struct DoubleClickToInstall_Previews: PreviewProvider {
    static var previews: some View {
        DoubleClickToInstall()
            .preferredColorScheme(.dark)
    }
}
