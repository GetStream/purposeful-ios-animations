//
//  HighjackUserAttention.swift
//  PurposefulSwiftUIAnimations
//
//  BAD ANIMATION EXAMPLE: Grabbing/hijacking users’ attention. This example is annoying and distracting. This example uses a radiating halo on the slider nob to grab user's attention, which is very distracting

//  A bad way to draw user's attention
import SwiftUI

struct HighjackUserAttention: View {
    @State private var speed = 0.0
    @State private var isEditing = false
    @State private var isRadiating = 0.0
    
    let buttonBg = LinearGradient(gradient: Gradient(colors: [Color(.cyan), Color.white]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
        VStack(spacing: 32) {
            ZStack {
                Slider(
                    value: $speed,
                    in: -180...180,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 80, height: 80)
                    .scaleEffect(isRadiating)
                    .foregroundColor(.blue)
                    .opacity(0.5)
                    .offset(x: speed)
                    .animation(.easeOut(duration: 0.5).delay(0.3).repeatForever(autoreverses: false), value: isRadiating)
                    .onAppear {
                        isRadiating = .random(in: 0.2..<2)
                    }
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct HighjackUserAttention_Previews: PreviewProvider {
    static var previews: some View {
        HighjackUserAttention()
            .preferredColorScheme(.dark)
    }
}
