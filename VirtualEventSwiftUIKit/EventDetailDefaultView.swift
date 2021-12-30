//
//  EventDetailDefaultView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 9/12/2021.
//

import SwiftUI
import AVKit

struct EventDetailDefaultView: View {
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
            
            VStack {
                HStack {
                   VideoSelectedView()
                   Video1View()
                }
                HStack {
                    Video2View()
                    Video3View()
                }
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
                    
                    ListTapActionView()
                        .contextMenu{
                            
                            Label("Start thread", systemImage: "text.alignleft")
                           
                            
                                .foregroundColor(.red)
                            if #available(iOS 15.0, *) {
                                Button(role: .destructive) {
                                    print("")
                                } label: {
                                    Label("Mute user", systemImage: "mic.slash.fill")
                                }
                                
                                Button(role: .destructive) {
                                    print("")
                                } label: {
                                    Label("Flag message", systemImage: "flag.fill")
                                }
                            } else {
                                // Fallback on earlier versions
                            }
                        }
                    
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

struct EventDetailDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailDefaultView()
            .preferredColorScheme(.dark)
    }
}
