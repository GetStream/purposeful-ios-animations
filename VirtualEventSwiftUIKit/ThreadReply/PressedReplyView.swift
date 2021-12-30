//
// PressedReplyView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10.11.2021.
//

import SwiftUI

struct PressedReplyView: View {
    let adminBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                Image("cooper")
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    HStack {
                        Text("Maren Septimus")
                            .font(.footnote)
                        
                    Text("Admin")
                        .font(.caption)
                        .foregroundColor(accentPrimary)
                        .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                        .background(adminBg)
                        .cornerRadius(4)
                        
                        Text("now")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Text("You can't parse the bus without transmitting the mobile XSS application!")
                            .font(.footnote)
                        Text("1 Thread Reply")
                            .font(.caption)
                            .foregroundColor(accentPrimary)
                    }
                    
                }
            }
    }
    .frame(maxWidth: .infinity)
    .padding(EdgeInsets(top: 8, leading: 4, bottom: 4, trailing: 4))
    .background(composeButton)
        
    }
}

struct PressedReplyView_Previews: PreviewProvider {
    static var previews: some View {
        PressedReplyView()
            .preferredColorScheme(.dark)
    }
}
