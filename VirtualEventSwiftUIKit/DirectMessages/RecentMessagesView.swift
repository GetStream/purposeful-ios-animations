//
//  RecentMessagesView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct RecentMessagesView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    @State private var menuNotShowing = true
    @State private var isNotFocused = true
    
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
                
                // Switch between pressed and unpressed
                ZStack{
                    if menuNotShowing {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(composeButton)
                                .frame(width: 40, height: 40)
                            Image(systemName: "ellipsis")
                                .foregroundColor(DefaultLight)
                        }
                    } else {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(DefaultLight)
                                .frame(width: 40, height: 40)
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                        }
                    }
                }
                .onTapGesture {
                    menuNotShowing.toggle()
                }
            }
            
            // Divider
            Rectangle()
                .fill(borderColor)
                .frame(maxWidth: .infinity, maxHeight: 1)
            
            // Reveal and hide menu
            if menuNotShowing {
                Text("")
            } else {
                HStack {
                    Spacer()
                    VStack(spacing: 0) {
                        HStack{
                            Text("Mute user")
                            Image(systemName: "mic.slash.fill")
                                .foregroundColor(accentRed)
                        }
                        .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                        .background(borderColor)
                        
                        HStack{
                            Text("Flag user")
                            Image(systemName: "flag.fill")
                                .foregroundColor(accentRed)
                        }
                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        .background(DefaultLight)
                    }
                    .mask(RoundedRectangle(cornerRadius: 6))
                }
            }
            
            Spacer()
            
            HStack {
                HStack(alignment: .top) {
                    Image("afia")
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        HStack {
                            Text("You")
                                .font(.footnote)
                            Text("1m")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Text("Hi John, great keynote! Have you seen Ron James presentation?")
                            .font(.footnote)
                    }
                }
                Spacer()
            } // Chat participant 0
           
            
            HStack {
                HStack(alignment: .top) {
                    Image("kwasi")
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Amos the Gyamfi")
                                .font(.footnote)
                            Text("5 mins")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Text("Hi Marilyn, thanks, means a lot.")
                            .font(.footnote)
                    }
                }
                Spacer()
            } // All Views
            
            HStack {
                HStack(alignment: .top) {
                    Image("ama")
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        HStack {
                            Text("You")
                                .font(.footnote)
                            Text("1m")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Text("We need to override the virtual XML pixel!")
                            .font(.footnote)
                    }
                }
                Spacer()
            } // All Views
            
            HStack {
                HStack(alignment: .top) {
                    Image("kofi")
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Ruben George")
                                .font(.footnote)
                            Text("1m")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        Text("Probably not: there was an issue with the cloud sync. But I managed to record my screen. I’ll send it to you via mail.")
                            .font(.footnote)
                    }
                }
                Spacer()
            } // All Views
            
          
            ZStack{
                if isNotFocused {
                    ComposeAreaView()
                } else {
                    FocusedComposeAreaView()
                }
            }
            .onTapGesture {
                isNotFocused.toggle()
            }
            
        } // All Views
    }
}

struct RecentMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessagesView()
            .preferredColorScheme(.dark)
    }
}
