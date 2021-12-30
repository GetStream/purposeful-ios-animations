//
//  GiphyCardView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 9/12/2021.
//

import SwiftUI
import AVKit

struct GiphyCardView: View {
    
    @State var player = AVPlayer()
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    let buttonsBG = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    @State private var tailRotating = false
    
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
            
            VStack(alignment: .leading, spacing: 8) {
                
                HStack {
                    Image("giphy")
                    Text("Giphy")
                }
                .padding(.top)
                
                ZStack(alignment: .trailing) {
                    if #available(iOS 15.0, *) {
                        Image("tail")
                            .rotationEffect(.degrees(tailRotating ? -5 : 10), anchor: tailRotating ? .leading : .bottomLeading)
                            .scaleEffect(0.5)
                            .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 80))
                            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: tailRotating)
                            .task {
                                tailRotating.toggle()
                            }
                    } else {
                        // Fallback on earlier versions
                    }
                    ZStack {
                        Image("cat")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 356, maxHeight: 217)
                    }
                }
                .background(accentRed.opacity(0.1))
            }
            VStack(alignment: .trailing) {
                HStack{
                    Button {
                        print("Cancel")
                    } label: {
                        Text("Cancel")
                            .padding(16)
                    }
                    .contentShape(Rectangle())
                    .buttonStyle(.plain)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Button {
                        print("Shuffle")
                    } label: {
                        Text("Shuffle")
                            .padding(16)
                    }
                    .contentShape(Rectangle())
                    .foregroundColor(.secondary)
                    .buttonStyle(.plain)
                    
                    Divider()
                    
                    Button {
                        print("Send")
                    } label: {
                        Text("Send")
                            .padding(16)
                    }
                    .contentShape(Rectangle())
                    .buttonStyle(.automatic)
                }
                .frame(maxWidth: .infinity, maxHeight: 42)
                .background(buttonsBG.opacity(0.2))
                
                HStack {
                    Image(systemName: "eye")
                    Text("Only visible to you")
                        .font(.caption)
                }
                .foregroundColor(.secondary)
            }
            
            Spacer()
            
            ComposeAreaView()
        } // All Views
        .padding()
    }
}

struct GiphyCardView_Previews: PreviewProvider {
    static var previews: some View {
        GiphyCardView()
            .preferredColorScheme(.dark)
    }
}
