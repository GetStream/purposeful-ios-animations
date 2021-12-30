//
//  EmptyStateView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct EmptyStateView: View {
    let primaryAccent = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let AccentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        VStack {
            // Overview Header
            HStack {
                Text("Direct Messages")
                    .font(.title2)
                Spacer()
                Image("dark_light_switcher")
                    .clipShape(Circle())
                Image("overview_avatar")
                    .clipShape(Circle())
            }
            
            Spacer()
            
            VStack {
                Image("noDirectMessage")
                Text("No direct message yet")
                    .font(.headline)
                Text("You will see your first direct message here when you receive it.")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
           
            // Button with icon removed
            Button {
                print("Subscribe")
            }
            label: {
                HStack {
                    Image(systemName: "")
                        .foregroundColor(Color(.systemYellow))
                    Text("Start a chat")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 12, leading: 108, bottom: 12, trailing: 108))
                .background(primaryAccent)
                .cornerRadius(8)
        }
            // Tab bar views
            ZStack {
                TabView {
                    BasicStructureView()
                        .tabItem {
                            Label("Overview", systemImage: "house.fill")
                        }
                    if #available(iOS 15.0, *) {
                    BasicStructureView()
                        .tabItem {
                            Label("Events", systemImage: "calendar")
                        }
                        .badge("")
                    
                   
                        BasicStructureView()
                            .tabItem {
                                Label("DM", systemImage: "location")
                            }
                    } else {
                        // Fallback on earlier versions
                    }
                }
                .frame(width: .infinity, height: 73)
                    
            }
            
        } // All Views
        .padding()
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
            .preferredColorScheme(.dark)
    }
}
