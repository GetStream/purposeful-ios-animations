//
//  ScheduleCardView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  ScheduleCardView: View {
    
    let cubeBg = Color(#colorLiteral(red: 0.0862745098, green: 0.05882352941, blue: 0.1137254902, alpha: 1))
    let eventsBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    @State private var chromaRotating = false
    @State private var gentlyElevating = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack {
                if #available(iOS 15.0, *) {
                    Rectangle()
                        .frame(maxWidth: 347, maxHeight: 162)
                        .foregroundColor(cubeBg)
                        .overlay(
                            Image("hypercube_schedule")
                                .hueRotation(.degrees(chromaRotating ? 0 : 360*2))
                                // Default Animation
                                .rotation3DEffect(
                                    .degrees(10),
                                    axis: (x: 1, y: CGFloat(gentlyElevating ? -2 : 2), z: 1),
                                    anchor: gentlyElevating ? .leading: .top,
                                    anchorZ: -15,
                                    perspective: 5)
                                /*.rotation3DEffect(
                                    .degrees(10),
                                    axis: (x: 1, y: CGFloat(gentlyElevating ? -2 : 2), z: 1),
                                    anchor: gentlyElevating ? .leading: .top,
                                    anchorZ: -1,
                                    perspective: 10)*/
                                /*.rotation3DEffect(
                                    .degrees(160),
                                    axis: (x: 1, y: CGFloat(gentlyElevating ? -15 : 15), z: gentlyElevating ? -30 : 45),
                                    anchor: gentlyElevating ? .leading: .top,
                                    anchorZ: 15,
                                    perspective: 15)*/
                                .task {
                                    withAnimation(.easeInOut(duration: 10).repeatForever(autoreverses: true)){
                                        chromaRotating.toggle()
                                        gentlyElevating.toggle()
                                    }
                                }
                        )
                } else {
                    // Fallback on earlier versions
                }
                    
                VStack(alignment: .leading) {
                    HStack {
                        Image("presentation")
                        Text("ESG Data - How to create it")
                    }
                    
                    Text("ESG Regulations, Standards and Disclosure: Who to publish it for and how to make it meaningful.")
                    
                    HStack {
                        HStack(spacing: 16) {
                            Label("2", systemImage: "person.fill")
                            Label("150", systemImage: "eye.fill")
                        }
                        
                        Spacer()
                        
                        Text("Private")
                            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                            .background(Color(.systemGray2))
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

struct  ScheduleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCardView()
            .preferredColorScheme(.dark)
    }
}
