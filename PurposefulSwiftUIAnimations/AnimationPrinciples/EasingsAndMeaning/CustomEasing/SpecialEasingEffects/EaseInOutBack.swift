
import SwiftUI
/*
 You can use EaseInOutBack for creating special behaviors for your animations. It goes beyond the start and end position of easeIn and easeOut. A great example can be seen in the App Store Today’s view: Tapping on any of the cards transition from their summary to the detail view. In the example used here, the EaseInOutBack pacing causes the the bell icon to move down slightly to anticipate the user before its actual sliding movement begins. 

 */
struct EaseInOutBack: View {
    
    @State private var showing = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bell.fill")
                    .font(.largeTitle)
                
                VStack {
                    Text("Silent mode")
                    Text("On")
                }
            }
            .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            .background(Color(.systemGray4))
            .cornerRadius(32)
            // Make the view disappear using easeIn
            .offset(y: showing ? -UIScreen.main.bounds.height : 0)
            .onAppear {
                withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6).delay(1)) {
                    showing.toggle()
                }
        }
            Spacer()
        }
        .padding()
    }
}

struct EaseInOutBack_Previews: PreviewProvider {
    static var previews: some View {
        EaseInOutBack()
            .preferredColorScheme(.dark)
    }
}
