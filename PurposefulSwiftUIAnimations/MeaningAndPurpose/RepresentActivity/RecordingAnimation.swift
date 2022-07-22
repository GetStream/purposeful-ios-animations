//
//  Recording.swift
//  PurposefulSwiftUIAnimations
//
//  ANIMATION AND MEANING - Recording, Listening: Representation of activities
//

import SwiftUI

struct Recording: View {
    @State private var recording = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 1)
                .fill(Color(.systemGray6).gradient)
                .frame(width: 64, height: 64)
                .scaleEffect(recording)
                .animation(.easeOut(duration: 0.5).delay(0.3).repeatForever(autoreverses: true), value: recording)
            Circle()
                .stroke(lineWidth: 1)
                .fill(Color(.systemGray6).gradient)
                .frame(width: 64, height: 64)
                .scaleEffect(recording)
                .animation(.easeOut(duration: 0.5).delay(1).repeatForever(autoreverses: false), value: recording)
            Circle()
                .fill(Color(.systemGray6).gradient)
                .frame(width: 48, height: 48)
                .scaleEffect(recording)
                .animation(.easeInOut(duration: 0.5).delay(0.5).repeatForever(autoreverses: false), value: recording)
            Circle()
                .fill(.red.gradient)
                .frame(width: 64, height: 64)
            Image(systemName: "mic.fill")
                .font(.largeTitle)
        }
        .onAppear {
            recording = .random(in: 1..<5)
        }
    }
}

struct Recording_Previews: PreviewProvider {
    static var previews: some View {
        Recording()
            .preferredColorScheme(.dark)
    }
}
