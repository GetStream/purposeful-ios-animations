//
//  PresenterView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct PresenterView: View {
    
    @State private var movingUpDown = false
    @State private var rotating = false
    @State private var chromaRotating = false
    
    var body: some View {
        HStack {
            //Image("summit_logo")
            
            // LOgo
            if #available(iOS 15.0, *) {
                ZStack {
                    Image("summitBG")
                    VStack(spacing: -5) {
                        Image("top")
                            .scaleEffect(movingUpDown ? 0.2 : 1)
                            .offset(y: movingUpDown ? 20 :0)
                        
                        HStack(spacing: 1) {
                            Image("left")
                                .rotationEffect(.degrees(rotating ? 65 : 0), anchor: .bottomTrailing)
                            
                            Image("right")
                                .rotationEffect(.degrees(rotating ? -65 : 0), anchor: .bottomLeading)
                            
                        }
                    }
                }
                .hueRotation(.degrees(chromaRotating ? 0 : 360))
                .task {
                    withAnimation(.easeInOut(duration: 2).delay(1).repeatForever(autoreverses: true)) {
                        movingUpDown.toggle()
                        rotating.toggle()
                        chromaRotating.toggle()
                    }
                }
            } else {
                // Fallback on earlier versions
            }
            
            VStack(alignment: .leading) {
                Text("World Hacker Summit 2021")
                    .font(.title2)
                Text("Presented by **Stream**")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct PresenterView_Previews: PreviewProvider {
    static var previews: some View {
        PresenterView()
            .preferredColorScheme(.dark)
    }
}
