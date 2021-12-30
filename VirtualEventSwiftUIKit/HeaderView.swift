//
//  HeaderView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 09.12.2021.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        // Overview Header
        HStack {
            Text("Overview")
                .font(.title2)
            Spacer()
            Image("dark_light_switcher")
                .clipShape(Circle())
            Image("overview_avatar")
                .clipShape(Circle())
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .preferredColorScheme(.dark)
    }
}
