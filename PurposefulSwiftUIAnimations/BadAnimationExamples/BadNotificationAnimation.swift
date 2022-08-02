//
//  BadNotificationAnimation.swift
//  PurposefulSwiftUIAnimations
//
//  Here is another example using a wrong easing for animation. The animation uses linear easing for rotating the bell icon and that causes the animation to jerk at the end. This can be improved by using easeOut, easeInOut or a custom sine curve to create a gentle rotation.

//  Also, the bell icon icon rotates at the wrong anchor. Users always perceive a bell icon to be rotated at its hinge. That is the top. Rotating it at the center make it weird.

import SwiftUI

struct BadNotificationAnimation: View {
    @State private var rotating = false
    
    var body: some View {
        NavigationStack {
            Text("Here is another example using a wrong easing for animation. The animation uses linear easing for rotating the bell icon and that causes the animation to jerk at the end. This can be improved by using easeOut, easeInOut or a custom sine curve to create a gentle rotation. Also, the bell icon icon rotates at the wrong anchor. Users always perceive a bell icon to be rotated at its hinge. That is the top. Rotating it at the center make it weird").padding()
                .navigationTitle("Bad Animation")
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
                            .rotationEffect(.degrees(rotating ? 0 : -45))
                            .onAppear{
                                withAnimation(.linear.repeatCount(6)){
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

struct BadNotificationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BadNotificationAnimation()
            .preferredColorScheme(.dark)
    }
}
