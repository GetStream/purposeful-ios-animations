//
// ListItem4View.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10.11.2021.
//

import SwiftUI

struct ListItem4View: View {
    let adminBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                Image("carla")
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    HStack {
                        Text("Carla Vetrovs")
                            .font(.footnote)
                        
                    Text("Moderator")
                        .font(.caption)
                        .foregroundColor(accentPrimary)
                        .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                        .background(adminBg)
                        .cornerRadius(4)
                        
                        Text("2m")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Text("You can't index the feed without generating the solid state XSS firewall!")
                        .font(.footnote)
                }
            }
    }
    //.padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
    .frame(maxWidth: .infinity)
    //.background(adminBg.opacity(0.13))
    }
}

struct ListItem4View_Previews: PreviewProvider {
    static var previews: some View {
        ListItem4View()
            .preferredColorScheme(.dark)
    }
}
