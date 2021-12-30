//
//  HeaderComposeAreaView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct HeaderComposeAreaView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(composeButton)
                        .frame(width: 40, height: 40)
                    Image(systemName: "chevron.left")
                        .foregroundColor(DefaultLight)
                }
                
                Spacer()
                
                VStack {
                    Text("Lincoln Culhane")
                        .font(.footnote)
                    Text("Direct Message")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(composeButton)
                        .frame(width: 40, height: 40)
                    Image(systemName: "ellipsis")
                        .foregroundColor(DefaultLight)
                }
            }
            
            // Divider
            Rectangle()
                .fill(borderColor)
                .frame(maxWidth: .infinity, maxHeight: 1)
            
            Spacer()
            
           ComposeAreaView()
        } // All Views
    }
}

struct HeaderComposeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComposeAreaView()
            .preferredColorScheme(.dark)
    }
}
