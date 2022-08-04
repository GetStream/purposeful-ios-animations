//
//  GreatNotificationAnimation.swift
//  PurposefulSwiftUIAnimations
//
//  Here is another example using a wrong easing for animation. The animation uses linear easing for rotating the bell icon and that causes the animation to jerk at the end. This can be improved by using easeOut, easeInOut or a custom sine curve to create a gentle rotation.

//  Also, the bell icon icon rotates at the wrong anchor. Users always perceive a bell icon to be rotated at its hinge. That is the top. Rotating it at the center make it weird.

import SwiftUI

struct GreatNotificationAnimation: View {
    @State private var rotating = false
    
    var body: some View {
        NavigationStack {
            Text("Here is another example using a wrong easing for animation. The animation uses linear easing for rotating the bell icon and that causes the animation to jerk at the end. This can be improved by using easeOut, easeInOut or a custom sine curve to create a gentle rotation. Also, the bell icon icon rotates at the wrong anchor. Users always perceive a bell icon to be rotated at its hinge. That is the top. Rotating it at the center make it weird").padding()
                .navigationTitle("Great Animation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("Edit button was tapped")
                        } label: {
                            Label("Edit", image: "start-conversation-icon")
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        ZStack(alignment: .topTrailing) {
                            Button {
                                print("Notification icon tapped")
                            } label: {
                                Label("Notification", systemImage: "bell.fill")
                            }
                            .font(.title2)
                            .rotationEffect(.degrees(rotating ? 0 : -90), anchor: .top)
                            .onAppear{
                                withAnimation(.spring(response: 0.2, dampingFraction: 0.825/4, blendDuration: 0).repeatCount(1, autoreverses: true)){
                                    rotating.toggle()
                                }
                        }
                            Image("unreadIndicator")
                                .hueRotation(.degrees(150))
                        }
                    }
                }
        }
        .padding()
    }
}

struct GreatNotificationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GreatNotificationAnimation()
            .preferredColorScheme(.dark)
    }
}
