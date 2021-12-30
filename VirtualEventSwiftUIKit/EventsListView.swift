//
//  EventsListView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 09.12.2021.
//

import SwiftUI

struct EventsListView: View {
    
    @State private var themeNotSwitched = true
    
    var body: some View {
        VStack {
            // Events Header
            HStack {
                Text("Events")
                    .font(.title2)
                Spacer()
                Image("dark_light_switcher")
                    .clipShape(Circle())
                    .onTapGesture {
                        themeNotSwitched.toggle()
                    }
                Image("overview_avatar")
                    .clipShape(Circle())
            }
            if themeNotSwitched {
                VStack {
                    ScheduleCardView()
                    EventCardView()
                }
            } else {
                ZStack(alignment: .topTrailing) {
                    VStack {
                        ScheduleCardView()
                        EventCardView()
                    }
                    
                    ThemesMenuView()
                        .padding(.top, -76)
                }
            }
            
            
           
           TabBarView()
        } // All Views
        .padding()
    }
}

struct BEventsListView_Previews: PreviewProvider {
    static var previews: some View {
        EventsListView()
            .preferredColorScheme(.dark)
    }
}
