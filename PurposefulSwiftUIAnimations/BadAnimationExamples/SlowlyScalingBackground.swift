//
//  SlowlyScalingBackground.swift
//  PurposefulSwiftUIAnimations
//
//  Created by amos from getstream.io on 4.7.2022.
    /*
     Vestibular triggers: Scaling, zooming, and excessive blurring animations. They can give the illusion that the user is moving in physical space. This example illustrates a slowly scaling background image.
     */

import SwiftUI

struct SlowlyScalingBackground: View {
    @State private var isScaling = false
    
    var body: some View {
        Image("rocks")
            .resizable()
            .scaleEffect(isScaling ? 2 : 1)
            .ignoresSafeArea()
            .animation(.linear(duration: 10).repeatForever(autoreverses: false), value: isScaling)
            .onAppear{
                isScaling.toggle()
            }
    }
}

struct SlowlyScalingBackground_Previews: PreviewProvider {
    static var previews: some View {
        SlowlyScalingBackground()
    }
}
