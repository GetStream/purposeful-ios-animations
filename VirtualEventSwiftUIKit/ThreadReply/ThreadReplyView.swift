//
//  ThreadReplyView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10/12/2021.
//

import SwiftUI

struct ThreadReplyView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    @State private var composeText = "If we hack the firewall"
    var body: some View {
        VStack(alignment: .leading) {
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
                    Text("Thread Reply")
                        .font(.footnote)
                    Text("with Lincoln Culhane")
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
            Divider()
            
            Spacer()
            
            HStack {
                HStack(alignment: .top) {
                    Image("george")
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Lincoln Culhane")
                                .font(.footnote)
                            Text("2m")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Text("You can't transmit the alarm without quantifying the haptic AGP card!")
                            .font(.footnote)
                    }
                }
            }
            
            VStack(spacing: 8) {
                Rectangle()
                    .fill(borderColor)
                    .frame(maxWidth: .infinity, maxHeight: 1)
            
                HStack {
                    ZStack(alignment: .trailing) {
                        TextField("Say something", text: $composeText)
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
                
                HStack {
                    Image(systemName: "checkmark.square.fill")
                        .renderingMode(.original)
                    Text("Send also as direct message")
                        .font(.caption)
                    
                    Spacer()
                }
            }
        }
        .padding()
    } 
}

struct ThreadReplyView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadReplyView()
            .preferredColorScheme(.dark)
    }
}
