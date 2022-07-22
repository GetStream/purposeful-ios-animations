//
//  TypingIndicatorsInChat.swift

/*  ANIMATION AND MEANING: Emulate turn-taking: Typing indicators in chat messaging apps. Leverage animations for usability, and give hints about what is  happening.
*/

import SwiftUI

struct TypingIndicatorsInChat: View {
    let notificationColor = Color(#colorLiteral(red: 1, green: 0.2156862745, blue: 0.2588235294, alpha: 1))
    let onlineColor = Color(#colorLiteral(red: 0.1254901961, green: 0.8784313725, blue: 0.4392156863, alpha: 1))
    @State private var isTyping = false
    
    var body: some View {
        HStack {
            ZStack(alignment: .topTrailing) {
                Image("user_chew")
                //User status: Online or offline
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(onlineColor)
            }
            
            VStack(alignment: .leading){
                Text("Opacity Scale")
                    .font(.body)
                HStack {
                    
                    HStack(spacing: 4) {
                        Circle()
                            .frame(width: 6, height: 6)
                            .scaleEffect(isTyping ? 1 : 0.2)
                            .opacity(isTyping ? 1 : 0.1)
                            .animation(.easeIn(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                        Circle()
                            .frame(width: 6, height: 6)
                            .scaleEffect(isTyping ? 1 : 0.1)
                            .opacity(isTyping ? 1 : 0.1)
                            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                        Circle()
                            .frame(width: 6, height: 6)
                            .scaleEffect(isTyping ? 1 : 0)
                            .opacity(isTyping ? 1 : 0.1)
                            .animation(.easeOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                    }
                    .onAppear{
                        isTyping.toggle()
                    }
                    
                    Text("is typing")
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                // Number of unread messages
                Image(systemName: "2.circle")
                    .foregroundColor(notificationColor)
                    .font(.footnote)
                HStack(spacing: 4) {
                    Image("readReceipt")
                    Text("Now")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
    }
}

struct TypingIndicatorsInChat_Previews: PreviewProvider {
    static var previews: some View {
        TypingIndicatorsInChat()
            .preferredColorScheme(.dark)
    }
}
