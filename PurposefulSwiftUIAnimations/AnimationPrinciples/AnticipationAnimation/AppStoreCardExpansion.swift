//
//  AppStoreCardExpansion.swift
//  PurposefulSwiftUIAnimations
//
/*  Using EaseInOutBack to create anticipation: - Anticipation. Gives users a sense of what is about to happen:
 Example:
    AppStore card expansion signals to you that the
    card is going to expand by slightly scaling
    down.
 */

import SwiftUI

struct AppStoreCardExpansion: View {
    @State private var expanded = false
    @Namespace private var animation
    
    var body: some View {
        ZStack {
            if !expanded {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.indigo.gradient)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                    .padding()
                    .frame(width: .infinity, height: 400)
                
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.indigo.gradient)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                    .ignoresSafeArea()
            }
            
        } // All views
        .animation(.timingCurve(1, -0.39, 0, 1.36).delay(0.1), value: expanded)
        .onTapGesture {
            expanded.toggle()
        }
    }
}

struct AppStoreCardExpansion_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreCardExpansion()
            .preferredColorScheme(.dark)
    }
}
