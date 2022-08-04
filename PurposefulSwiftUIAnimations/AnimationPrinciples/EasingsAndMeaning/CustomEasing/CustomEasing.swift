//
//  CustomEasing.swift

import SwiftUI
/*
 Do you want your animation to look and feel unique? If yes, you can use custom timing functions to create, for example, the following animation effects. Sinusoidal: Gentle effects, Circular (easeInCircc): Animations that require dramatic acceleration, Exponential (easeInExpo): Exaggerated, fast, and energetic effects, Special effects: easeInOutBack. The graph of easeInOutBack Goes beyond the start and end position of easeIn and easeOut. On iOS, a great example is the App Store Today’s view: Card transition from its summary to the detail view.
 */

struct CustomEasing: View {
    
    @State private var moving = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Custom Timing Curves")
                .font(.title)
            // Ball 1: (Sinusoidal): easeInOutSine Gentle effects
            HStack(spacing: 50) {
                Text("Sinusoidal (easeInOutSine):  Gentle effects")
                Image("ball")
                    .offset(x: moving ? 0 : 100)
                    // High Stiffness: A higher stiffness will result in a snappier animation.
                    .animation(.timingCurve(0.37, 0, 0.63, 1).delay(1).repeatForever(autoreverses: true), value: moving)
            }
            
            // Ball 2: easeInCirc: Dramatic acceleration
            HStack(spacing: 50) {
                Text("Circular (easeInCirc): Dramatic acceleration")
                Image("ball")
                    .offset(x: moving ? 0 : 100)
                    // Low Stiffness: Try 100 to 200
                    .animation(.timingCurve(0.55, 0, 1, 0.45).delay(1).repeatForever(autoreverses: true), value: moving)
            }
            
            // Ball 3: easeInExpo: Exaggerated, fast, and energetic effects

            HStack(spacing: 50) {
                Text("Exponential (easeInExpo): Exaggerated, energetic effects")
                Image("ball")
                    .offset(x: moving ? 0 : 100)
                    // Medium Stiffness
                    .animation(.timingCurve(0.7, 0, 0.84, 0).delay(1).repeatForever(autoreverses: true), value: moving)
            }
            
            // Ball 4: easeInOutBack
            HStack(spacing: 50) {
                Text("Special effects (easeInOutBack): Anticipation")
                Image("ball")
                    .offset(x: moving ? 0 : 100)
                    // Ball 4: Very Low Stiffness
                    .animation(.timingCurve(0.68, -0.6, 0.32, 1.6).delay(1).repeatForever(autoreverses: true), value: moving)
            }
        } // All balls
        .onAppear{
            moving.toggle()
        }
    }
}

struct CustomEasing_Previews: PreviewProvider {
    static var previews: some View {
        CustomEasing()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
