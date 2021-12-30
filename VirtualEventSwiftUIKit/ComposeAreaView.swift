//
//  ComposeAreaView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 09/122021.
//

import SwiftUI


struct ComposeAreaView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    @State private var composeText = "Say something"
   
    var body: some View {
        VStack(spacing: 8) {
            Rectangle()
                .fill(borderColor)
                .frame(maxWidth: .infinity, maxHeight: 1)
        
            HStack {
                ZStack(alignment: .trailing) {
            
                    TextField("Send a message", text: $composeText)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 0))
                        .cornerRadius(20)
                        .padding(8)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(borderColor))
                    
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
                    .foregroundColor(Color(.systemGray))
                }
                
                
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 16, trailing: 4))
        }
    }
}

struct ComposeAreaView_Previews: PreviewProvider {
    static var previews: some View {
            ComposeAreaView()
                .preferredColorScheme(.dark)
    }
}
