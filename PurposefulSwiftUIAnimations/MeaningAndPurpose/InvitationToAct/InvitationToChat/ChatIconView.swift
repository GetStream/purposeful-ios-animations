//
//  ChatIconView.swift
//  Created by Amos from getstream.io on 14.10.2021.
//
//  Draw a basic line in Kite and replace it with an SVG shape

import SwiftUI

struct ChatIconView: View {
    
    let chatIconColor = Color(#colorLiteral(red: 0.2997708321, green: 0.3221338987, blue: 0.3609524071, alpha: 1))
    @State private var drawingErasing = false
    
    var body: some View {
        Path{ path in
            path.move(to: CGPoint(x: 107.837997, y: 109.167))
            path.addLine(to: CGPoint(x: 68.959297, y: 102.454002))
            path.addCurve(to: CGPoint(x: 57.5, y: 103.5), control1: CGPoint(x: 65.252602, y: 103.139999), control2: CGPoint(x: 61.419899, y: 103.5))
            path.addCurve(to: CGPoint(x: 0.5, y: 51.749901), control1: CGPoint(x: 26.669399, y: 103.5), control2: CGPoint(x: 0.5, y: 80.948303))
            path.addCurve(to: CGPoint(x: 57.5, y: 0), control1: CGPoint(x: 0.5, y: 22.551201), control2: CGPoint(x: 26.669399, y: 0))
            path.addCurve(to: CGPoint(x: 114.5, y: 51.749901), control1: CGPoint(x: 88.330704, y: 0), control2: CGPoint(x: 114.5, y: 22.551201))
            path.addCurve(to: CGPoint(x: 105.68, y: 79.4263), control1: CGPoint(x: 114.5, y: 61.969898), control2: CGPoint(x: 111.237, y: 71.461998))
            path.addLine(to: CGPoint(x: 114.115997, y: 101.425003))
            path.addCurve(to: CGPoint(x: 113.211998, y: 107.140999), control1: CGPoint(x: 114.856003, y: 103.355003), control2: CGPoint(x: 114.511002, y: 105.538002))
            path.addCurve(to: CGPoint(x: 107.837997, y: 109.167), control1: CGPoint(x: 111.913002, y: 108.742996), control2: CGPoint(x: 109.861, y: 109.516998))
            path.closeSubpath()
            path.move(to: CGPoint(x: 107.837997, y: 109.167))
        }
        .trim(from: drawingErasing ? 0 : 1, to: 1)
        .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
        .frame(width: 114, height: 109)
        .foregroundColor(chatIconColor)
        .onAppear{
            withAnimation(.easeOut(duration: 2).delay(1).repeatForever(autoreverses: true)){
                drawingErasing.toggle()
            }
        }
    }
}

struct ChatIconView_Previews: PreviewProvider {
    static var previews: some View {
        ChatIconView()
            .preferredColorScheme(.dark)
    }
}
