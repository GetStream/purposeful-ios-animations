//
//  SelectUserView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct SelectUserView: View {
    
    @State var notSelected = true
    let selectedBG = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Image(systemName: "arrow.left")
                Text("Select User")
                    .font(.title2)
                
                Spacer()
            }
            
            Text("Select a user to try the Android SDK:")
                .font(.title3)
            
            VStack {
                HStack {
                Image("kwasi")
                    .resizable()
                    .clipShape(Circle())
                .frame(width: 56, height: 56)
                
                VStack(alignment: .leading) {
                    Text("Randy Westvelt")
                        .font(.headline)
                    Text("Randy Westvelt")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            
            if notSelected {
                HStack {
                    Image("ama")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 56, height: 56)
                    
                    VStack(alignment: .leading) {
                        Text("Tiana Arcand")
                            .font(.headline)
                        Text("Randy Westvelt")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                }
                .onTapGesture {
                    notSelected = false
                }
                
            } else {
                HStack {
                    Image("ama")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 56, height: 56)
                    
                    VStack(alignment: .leading) {
                        Text("Tiana Arcand")
                            .font(.headline)
                        Text("Randy Westvelt")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                .background(selectedBG)
                
            }
            
                
            HStack {
                Image("akua")
                    .resizable()
                    .clipShape(Circle())
                .frame(width: 56, height: 56)
                
                VStack(alignment: .leading) {
                    Text("Ashlynn Bergson")
                        .font(.headline)
                    Text("Randy Westvelt")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            HStack {
                Image("kofi")
                    .resizable()
                    .clipShape(Circle())
                .frame(width: 56, height: 56)
                
                VStack(alignment: .leading) {
                    Text("Chance Stanton")
                        .font(.headline)
                    Text("Randy Westvelt")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            HStack {
                Image("yaa")
                    .resizable()
                    .clipShape(Circle())
                .frame(width: 56, height: 56)
                
                VStack(alignment: .leading) {
                    Text("Jocelyn Levin")
                        .font(.headline)
                    Text("Randy Westvelt")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            }
            Spacer()
        } // All Views
        .padding()
    }
}

struct SelectUserView_Previews: PreviewProvider {
    static var previews: some View {
        SelectUserView()
            .preferredColorScheme(.dark)
    }
}
