//
//  ChatsView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 2.2.2022.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        
        // Channel List Header
        NavigationView{
            Color.clear
                .navigationTitle("Stream Chat")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    
                    // Left edge
                    leading: Button {
                        print("Pressed profile image")
                    } label: {
                        Image("hamburger")
                            .font(.largeTitle)
                    },
                    
                    // Right edge
                    trailing: Button {
                        print("Pressed contacts")
                    } label: {
                        Image("start-conversation-icon")
                    }
                )
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .preferredColorScheme(.dark)
    }
}
