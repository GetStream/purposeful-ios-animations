//
//  MuteUserModalView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10/12/2021.
//

import SwiftUI

struct MuteUserModalView: View {
    let selectionColor = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let accentRed = Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
    let alertBG = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(alertBG)
                   
                VStack(spacing: 8) {
                    Image(systemName: "speaker.slash")
                        .foregroundColor(accentRed)
                    
                    Text("Flag message")
                    Text("You won’t receive any more messages from them.")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 200)
                    Divider()
                    HStack {
                        Text("Cancel")
                            .foregroundColor(accentPrimary)
                        Spacer()
                        Text("Mute user")
                            .foregroundColor(accentRed)
                    }
                    .padding(.horizontal)
                    
                }
            }
            .frame(width: 304, height: 158)
            
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(alertBG)
                    
                
                HStack {
                    Image(systemName: "speaker.slash")
                        .foregroundColor(accentRed)
                    Spacer()
                    Text("User successfully muted ")
                    Spacer()
                    Image(systemName: "xmark")
                }
                .padding(.horizontal)
            }
            .frame(width: 304, height: 56)
                
        } // All Views
    }
}

struct MuteUserModalView_Previews: PreviewProvider {
    static var previews: some View {
        MuteUserModalView()
            .preferredColorScheme(.dark)
    }
}
