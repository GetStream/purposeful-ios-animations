//
//  TabBarView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 09.12.2021.
//

import SwiftUI

struct TabBarView: View {
    let AccentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        ZStack {
            TabView {
                BasicStructureView()
                    .tabItem {
                        Label("Overview", systemImage: "house.fill")
                    }

                BasicStructureView()
                    .tabItem {
                        Label("Events", systemImage: "calendar")
                    }
                
                if #available(iOS 15.0, *) {
                    BasicStructureView()
                        .tabItem {
                            Label("DM", systemImage: "location")
                        }
                        .badge("")
                } else {
                    // Fallback on earlier versions
                }
            }
            .frame(width: .infinity, height: 73)
                
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .preferredColorScheme(.dark)
    }
}
