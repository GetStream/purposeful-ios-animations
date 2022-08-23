//
//  CustomEasing.swift

import SwiftUI

struct DurationSets: View {
    
    @State private var moving = false
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text("Duration Sets")
                .font(.title)
            // Immediate
            HStack(spacing: 50) {
                Text("Immediate")
                Image("ball")
                    .offset(x: moving ? 0 : 200)
                    // High Stiffness: A higher stiffness will result in a snappier animation.
                    .animation(.easeInOut(duration: 0.1).delay(1).repeatForever(autoreverses: false), value: moving)
            }
            
            // Ball 2: Fast
            HStack(spacing: 50) {
                Text("Fast")
                Image("ball")
                    .offset(x: moving ? 0 : 200)
                    // Low Stiffness: Try 100 to 200
                    .animation(.easeInOut(duration: 0.3).delay(1).repeatForever(autoreverses: false), value: moving)
            }
            
            // Ball 3: Slow

            HStack(spacing: 50) {
                Text("Slow")
                Image("ball")
                    .offset(x: moving ? 0 : 200)
                    // Medium Stiffness
                    .animation(.easeInOut(duration: 0.4).delay(1).repeatForever(autoreverses: false), value: moving)
            }
            
            // Ball 4: Intentional
            HStack(spacing: 50) {
                Text("Intentional")
                Image("ball")
                    .offset(x: moving ? 0 : 200)
                    // Ball 4: Very Low Stiffness
                    .animation(.easeInOut(duration: 0.6).delay(1).repeatForever(autoreverses: false), value: moving)
            }
        } // All balls
        .onAppear{
            moving.toggle()
        }
    }
}

struct DurationSets_Previews: PreviewProvider {
    static var previews: some View {
        DurationSets()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
