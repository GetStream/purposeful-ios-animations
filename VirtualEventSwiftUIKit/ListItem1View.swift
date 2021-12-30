//
// ListItem1View.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct ListItem1View: View {
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                Image("george")
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    HStack {
                        Text("Ruben George")
                            .font(.footnote)
                        Text("1m")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Text("We need to override the virtual XML pixel!")
                        .font(.footnote)
                }
            }
        } // All Views
        //.padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
        //.frame(maxWidth: .infinity)
        //.background(accentRed.opacity(0.13))
    }
}

struct ListItem1View_Previews: PreviewProvider {
    static var previews: some View {
        ListItem1View()
            .preferredColorScheme(.dark)
    }
}
