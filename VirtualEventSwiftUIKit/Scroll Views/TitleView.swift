//
//  TitleView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  TitleView: View {
    
    let gradient1 = Color(#colorLiteral(red: 0.0862745098, green: 0.05882352941, blue: 0.1137254902, alpha: 1))
    let gradient2 = Color(#colorLiteral(red: 0.1137254902, green: 0.02352941176, blue: 0.2, alpha: 1))
    let accentOrange = Color(#colorLiteral(red: 0.9764705882, green: 0.6745098039, blue: 0.09019607843, alpha: 1))
    @State private var chromaRotating = false
    @State private var gentlyElevating = false
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(
                        gradient: Gradient(
                            colors: [gradient1, gradient2]),
                            startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                            endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity, height: 162)
                
                HStack {
                    if #available(iOS 15.0, *) {
                        Image("hypercube")
                            .hueRotation(.degrees(chromaRotating ? 0 : 360*2))
                            .task {
                                withAnimation(.easeInOut(duration: 10).repeatForever(autoreverses: true)){
                                    chromaRotating.toggle()
                                    gentlyElevating.toggle()
                                }
                            }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    VStack(alignment: .leading) {
                        Text("World Hacker Summit")
                            .font(.headline)
                        Text("2021")
                            .font(.title2)
                            .foregroundColor(accentOrange)
                    }
                }
            }
        }
    }
}

struct  TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .preferredColorScheme(.dark)
    }
}
