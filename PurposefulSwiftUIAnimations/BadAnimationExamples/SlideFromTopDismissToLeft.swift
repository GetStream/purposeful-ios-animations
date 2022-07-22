//
//  SlideFromTopDismissToLeft.swift
//  An example of bad animation

/*
 - Avoid motion that doesn’t make sense
     - When a view reveals by sliding it from the top, people don’t expect to dismiss it by sliding it to the left or right. For example, Silent Mode On/Off.
 
 Disoriented animation. When an object slides from the top onto the screen, it is supposed to disappear by sliding back to the top and not to the side.
 */

//  Created by Amos from getstream.io
//

import SwiftUI

struct SlideFromTopDismissToLeft: View {
    
    @State private var showing = true
    @State private var rotating = false
    @State private var slideLeft = false
    
    var body: some View {
        HStack {
            Image(systemName: "bell.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(rotating ? 0 : -45), anchor: .top)
                .animation(.spring(response: 0.2, dampingFraction: 0.825/4, blendDuration: 0).repeatCount(1, autoreverses: true).delay(2.25), value: rotating)
            
            VStack {
                Text("Silent mode")
                Text("On")
            }
        }
        .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
        .background(Color(.systemGray4))
        .cornerRadius(32)
        .offset(y: showing ? -UIScreen.main.bounds.height/1.8 : -UIScreen.main.bounds.height/2.5)
        .offset(x: slideLeft ? -UIScreen.main.bounds.width : 0)
        .onAppear {
            rotating.toggle()
            
            withAnimation(.spring().delay(2)) {
                showing.toggle()
            }
            
            withAnimation(.easeIn.delay(5)) {
                slideLeft.toggle()
            }
        }
    }
}

struct SlideFromTopDismissToLeft_Previews: PreviewProvider {
    static var previews: some View {
        SlideFromTopDismissToLeft()
            .preferredColorScheme(.dark)
    }
}
