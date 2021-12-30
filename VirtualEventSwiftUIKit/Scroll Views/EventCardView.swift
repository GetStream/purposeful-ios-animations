//
//  EventCardView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  EventCardView: View {
    
    let stackBg = Color(#colorLiteral(red: 0.007843137255, green: 0, blue: 0.4823529412, alpha: 1))
    let eventsBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    let accentOrange = Color(#colorLiteral(red: 0.9843137255, green: 0.7921568627, blue: 0.4156862745, alpha: 1))
    @State private var chromaRotating = false
    @State private var gentlyElevating = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack {
                if #available(iOS 15.0, *) {
                    Rectangle()
                        .frame(maxWidth: 347, maxHeight: 162)
                        .foregroundColor(stackBg)
                        .overlay(Image("stack")
                                 //.resizable()
                                 //.aspectRatio(contentMode: .fit)
                                 //.scaleEffect(y: 1)
                                    .hueRotation(.degrees(chromaRotating ? 0 : 360))
                                    .scaleEffect(y: gentlyElevating ? 0.5 : 1)
                                 // Default animation
                                 .rotation3DEffect(
                                        .degrees(gentlyElevating ? -15 : 15),
                                        axis: (x: 1, y: CGFloat(gentlyElevating ? -5 : 15), z: gentlyElevating ? -2.5 : 5),
                                        anchor: gentlyElevating ? .topLeading: .bottom,
                                        anchorZ: 5,
                                        perspective: 3)
                                    /*.rotation3DEffect(
                                           .degrees(gentlyElevating ? -15 : 15),
                                           axis: (x: 1, y: CGFloat(gentlyElevating ? -5 : 15), z: gentlyElevating ? -2.5 : 5),
                                           anchor: gentlyElevating ? .topLeading: .bottomLeading,
                                           anchorZ: 5,
                                           perspective: 3)*/
                                    .task {
                                        withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)){
                                            chromaRotating.toggle()
                                            gentlyElevating.toggle()
                            }
                        })
                } else {
                    // Fallback on earlier versions
                }
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("chat_icon")
                        Text("Data strategy and executive communication")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    
                    Text("How to set a business plans to use information to a competitive advantage and support enterprise goals.")
                    
                    HStack {
                        HStack(spacing: 16) {
                            Label("6 / 9", systemImage: "person.fill")
                            Label("150", systemImage: "eye.fill")
                        }
                        
                        Spacer()
                        
                        Text("Moderated")
                            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                            .foregroundColor(.black)
                            .background(accentOrange)
                            .cornerRadius(16)
                    }
                }
                .frame(maxWidth: 315)
                .padding()
            }
            .background(eventsBg)
            .cornerRadius(16)
        } // All Views
    }
}

struct  EventCardView_Previews: PreviewProvider {
    static var previews: some View {
        EventCardView()
            .preferredColorScheme(.dark)
    }
}
