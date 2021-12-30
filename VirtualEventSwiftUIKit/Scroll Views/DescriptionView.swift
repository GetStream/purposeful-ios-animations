//
//  DescriptionView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  DescriptionView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Description")
                .font(.headline)
                .padding(.bottom, 8)
            Text("Welcome to the inaugural World Hacker Summit! The goal of today's event is to spotlight innovative thought leaders and to provide an opportunity to share and exchange new ideas, technology trends and networking.Click here to watch a two-minute tutorial with step-by-step instruction for how you can best maximize today's in-platform experience. We encourage you to view the event schedule and to take full advantage of all that this dynamic virtual event platform has to offer!")
                .padding(.bottom, 8)
            HStack(alignment: .top) {
                Text(".")
                    .fontWeight(.bold)
                Text("Engage in real-time networking and Q&A opportunities on a local, national, and global level.")
            }
            .padding(.leading)
            
            HStack(alignment: .top) {
                Text(".")
                    .fontWeight(.bold)
                Text("Grow your personal brand and your community in the *Networking* area. Here you will get paired with like minded individuals for 1:1 conversation.")
            }
            .padding(.leading)
            
            HStack(alignment: .top) {
                Text(".")
                    .fontWeight(.bold)
                Text("Take your virtual connections one step further — by initiating a request to schedule a meeting or sending a direct message with anyone in the Participants tab. You will have the opportunity to connect in a private conversation or private video session with up to 9 other people.")
            }
            .padding(.leading)
            
            Text("Enjoy today's event and don't forget to download your virtual passport for your chance to win. Contest details are noted below: ")
                .padding(.top, 8)
            HStack(alignment: .top) {
                Text("1.")
                    
                Text("Download Your Virtual Passport.")
            }
            .padding(.leading)
            
            HStack(alignment: .top) {
                Text("2.")
                    
                Text("Engage with booth representatives and ask for their unique booth code. It's that easy!")
            }
            .padding(.leading)
            
            HStack(alignment: .top) {
                Text("3.")
                    
                Text("corresponding passport field, along with your full name. To qualify, we ask that you visit a minimum of 4 booths.")
            }
            .padding(.leading)
            
            HStack(alignment: .top) {
                Text("4.")
                    
                Text("Submit your completed passport to Dorah Nielsen at dorah.nielsen@whs.com by 10 a.m. EST on 3/6.")
            }
            .padding(.leading)
            
            
        } // All Views
        .padding()
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
            .preferredColorScheme(.dark)
    }
}
