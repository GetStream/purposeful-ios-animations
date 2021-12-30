//
//  FocusedComposeAreaView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10/12/2021.
//

import SwiftUI

struct FocusedComposeAreaView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    @State private var composeText = "If we hack the firewall"
    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .fill(borderColor)
                .frame(maxWidth: .infinity, maxHeight: 1)
            
            HStack {
                        ZStack(alignment: .trailing) {
                            TextField("That would be great, than", text: $composeText)
                                .font(.footnote)
                                
                                .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 0))
                                .cornerRadius(20)
                                .padding(8)
                                .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2).foregroundColor(DefaultLight))
                            
                            Image(systemName: "bolt.fill")
                                .foregroundColor(Color(.systemGray))
                                .padding(8)
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 40, height: 40)
                                .foregroundColor(composeButton)
                            
                            VStack(spacing: 4) {
                                Image(systemName: "arrow.right")
                                    .font(.callout)
                                Text("280")
                                    .font(.caption2)
                            }
                            .foregroundColor(DefaultLight)
                        }
                    }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 16, trailing: 4))
        }
    }
}

struct FocusedComposeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        FocusedComposeAreaView()
            .preferredColorScheme(.dark)
    }
}
