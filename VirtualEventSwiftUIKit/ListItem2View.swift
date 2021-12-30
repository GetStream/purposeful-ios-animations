//
// ListItem2View.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10.11.2021.
//

import SwiftUI

struct ListItem2View: View {
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                Image("cooper")
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    HStack {
                        Text("Cooper Workman")
                            .font(.footnote)
                        Text("1m")
                            .font(.caption)
                            .foregroundColor(.secondary)
                       Image(systemName: "flag.fill")
                            .font(.caption)
                            .foregroundColor(accentRed)
                    }
                    Text("You can't transmit the alarm without quantifying the haptic AGP card!")
                        .font(.footnote)
                }
            }
    }
    //.padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
    .frame(maxWidth: .infinity)
    //.background(accentRed.opacity(0.13))
}

struct ListItem2View_Previews: PreviewProvider {
    static var previews: some View {
        ListItem2View()
            .preferredColorScheme(.dark)
    }
}
}
