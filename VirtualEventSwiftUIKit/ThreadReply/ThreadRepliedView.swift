//
//  ThreadRepliedView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10/12/2021.
//

import SwiftUI

struct ThreadRepliedView: View {
    
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    @State private var notShowingThreadReply = true
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
            
            // Switch between pressed and unpressed states
            ZStack{
                if notShowingThreadReply {
                    ListItem3View()
                        .padding(EdgeInsets(top: 8, leading: 4, bottom: 4, trailing: 4))
                        .background(composeButton)

                } else {
                    PressedReplyView()
                }
            }
            .onTapGesture {
                notShowingThreadReply.toggle()
            }
            
            VStack(spacing: 8) {
                
                ComposeAreaView()
                
                HStack {
                    Image(systemName: "rectangle")
                        .foregroundColor(Color(.systemGray))
                    Text("Send also as direct message")
                        .font(.caption)
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct ThreadRepliedView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadRepliedView()
            .preferredColorScheme(.dark)
    }
}
