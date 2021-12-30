//
//  ThemesMenuView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct ThemesMenuView: View {
    
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let SocialMessengerLight = Color(#colorLiteral(red: 0.09803921569, green: 0.6274509804, blue: 1, alpha: 1))
    let MenuBG = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    let TeamCollaborationLight = Color(#colorLiteral(red: 0.3058823529, green: 0.1137254902, blue: 0.6156862745, alpha: 1))
    
    var body: some View {
        VStack(spacing: 12) {
            Group {
                HStack {
                    Text("Default Light")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(DefaultLight)
                    }
                }
                
                HStack {
                    Text("Default Dark")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(DefaultLight)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    }
                }
                
                HStack {
                    Text("Social Messenger Light")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(SocialMessengerLight)
                    }
                }
                
                HStack {
                    Text("Social Messenger Dark")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(DefaultLight)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    }
                }
                
                HStack {
                    Text("Livestream Light")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(DefaultLight)
                    }
                }
                
                HStack {
                    Text("Livestream Dark")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(DefaultLight)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    }
                }
                
                HStack {
                    Text("Curtomer Support Light")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(DefaultLight)
                    }
                }
                
                HStack {
                    Text("Curtomer Support Dark")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(DefaultLight)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    }
                }
                
                HStack {
                    Text("Team Collaboration Light")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.white)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(TeamCollaborationLight)
                    }
                }
                
                HStack {
                    Text("Team Collaboration Dark")
                        .font(.footnote)
                    Spacer()
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.purple)
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .frame(width: 8, height: 8)
                            .rotationEffect(.degrees(-90))
                            .foregroundColor(.black)
                    }
                }
            } // Group ends
            
            HStack {
                Text("Music Player Light")
                    .font(.footnote)
                Spacer()
                ZStack {
                    Circle()
                        .trim(from: 1/2, to: 1)
                        .frame(width: 8, height: 8)
                        .rotationEffect(.degrees(90))
                        .foregroundColor(.white)
                    Circle()
                        .trim(from: 1/2, to: 1)
                        .frame(width: 8, height: 8)
                        .rotationEffect(.degrees(-90))
                        .foregroundColor(.pink)
                }
            }
            
            HStack {
                Text("Music Player Dark")
                    .font(.footnote)
                Spacer()
                ZStack {
                    Circle()
                        .trim(from: 1/2, to: 1)
                        .frame(width: 8, height: 8)
                        .rotationEffect(.degrees(90))
                        .foregroundColor(.green)
                    Circle()
                        .trim(from: 1/2, to: 1)
                        .frame(width: 8, height: 8)
                        .rotationEffect(.degrees(-90))
                        .foregroundColor(.black)
                }
            }
        } // Main vertical container ends
        .padding()
        .background(MenuBG)
        .cornerRadius(6)
        .frame(maxWidth: 222, maxHeight: 504
        )
    }
}

struct ThemesMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesMenuView()
            .preferredColorScheme(.dark)
    }
}
