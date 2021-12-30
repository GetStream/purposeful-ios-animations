//
//  EventDetailPinnedView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 9/12/2021.
//

import SwiftUI
import AVKit

struct EventDetailPinnedView: View {
    @State var player = AVPlayer()
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    let adminBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                Text("Data strategy")
                    .font(.footnote)
                Spacer()
                Image(systemName: "info.circle")
            }
            
            ZStack(alignment: .bottomLeading) {
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "speaker1", withExtension: "mp4")!))
                    .frame(maxWidth: 403, maxHeight: 365)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 4)
                            .foregroundColor(selectionColor))
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 139, height: 24)
                            .foregroundColor(.black)
                        .blendMode(.overlay)
                        
                        HStack {
                            Text("Lita Sherman")
                               
                            Image(systemName: "text.alignleft")
                                .rotationEffect(.degrees(-90))
                                .foregroundColor(selectionColor)
                            Image(systemName: "pin.fill")
                                .rotationEffect(.degrees(45))
                        }
                        .font(.caption)
                    }
                    Spacer()
                    Image("Connection")
                }
                .padding(2)
            }
            
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
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
                                    Image(systemName: "flag.fill")
                                         .font(.caption)
                                         .foregroundColor(accentRed)
                                }
                                Text("We need to override the virtual XML pixel!")
                                    .font(.footnote)
                            }
                        }
                        .opacity(0.5)
                    } // List 0
                    .clipShape(Rectangle().offset(y: 9))
                    
                    HStack {
                        HStack(alignment: .top) {
                            Image("carla")
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Carla Vetrovs")
                                        .font(.footnote)
                                    Text("Moderator")
                                        .font(.caption)
                                        .foregroundColor(accentPrimary)
                                        .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                                        .background(adminBg)
                                        .cornerRadius(4)
                                    Text("2m")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                Text("You can't index the feed without generating the solid state XSS firewall!")
                                    .font(.footnote)
                            }
                        }
                    } // List 1
                    
                    HStack {
                        HStack(alignment: .top) {
                            Image("maren")
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
                                    Text("2m")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                Text("You can't parse the bus without transmitting the mobile XSS application!")
                                    .font(.footnote)
                            }
                        }
                    } // List 2
                    
                    HStack {
                        HStack(alignment: .top) {
                            Image("zain")
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Zain Carder")
                                        .font(.footnote)
                                    Text("1m")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                Text("If we index the matrix, we can get to the EXE firewall through the neural SMS pixel!")
                                    .font(.footnote)
                            }
                        }
                    } // List 3
                    
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
                                }
                                Text("You can't transmit the alarm without quantifying the haptic AGP card!")
                                    .font(.footnote)
                            }
                        }
                    } // List 4
                    
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
                                    Image(systemName: "flag.fill")
                                         .font(.caption)
                                         .foregroundColor(accentRed)
                                }
                                Text("We need to override the virtual XML pixel!")
                                    .font(.footnote)
                            }
                        }
                    } // List 5
                }
            }
            
            ComposeAreaView()
        } // All Views
        .padding()
    }
}

struct EventDetailPinnedView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailPinnedView()
            .preferredColorScheme(.dark)
    }
}
