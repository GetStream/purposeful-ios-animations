

import SwiftUI

struct SlideDownSlideUp: View {
    
    @State private var slideDown = true
    @State private var rotating = false
    @State private var slideUp = false
    
    // When an object slides to one direction to show itself, it is supposed to disappear in the same direction
    
    var body: some View {
        HStack {
            Image(systemName: "bell.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(rotating ? 0 : -45), anchor: .top)
                .animation(.spring(response: 0.2, dampingFraction: 0.825/4, blendDuration: 0).repeatCount(1, autoreverses: true).delay(2.25), value: rotating)
            
            VStack {
                Text("Silent mode")
                Text("On")
            }
        }
        .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
        .background(Color(.systemGray4))
        .cornerRadius(32)
        .offset(y: slideDown ? -UIScreen.main.bounds.height/1.8 : -UIScreen.main.bounds.height/2.5)
        .offset(y: slideUp ? -UIScreen.main.bounds.width : 0)
        .onAppear {
            rotating.toggle()
            
            withAnimation(.spring().delay(2)) {
                slideDown.toggle()
            }
            
            withAnimation(.easeIn.delay(5)) {
                slideUp.toggle()
            }
        }
    }
}

struct SlideDownSlideUp_Previews: PreviewProvider {
    static var previews: some View {
        SlideDownSlideUp()
            .preferredColorScheme(.dark)
    }
}
