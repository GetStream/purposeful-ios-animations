//
//  ListTapActionView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct ListTapActionView: View {
    let accentPrimary = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    let listBg = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let adminBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    @State private var notTapped = true
    var body: some View {
        if notTapped {
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
            .onTapGesture {
                notTapped = false
            }
        } else {
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
                                .background(Color.white)
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
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
            .background(listBg)
            .onTapGesture {
                notTapped = true
            }
            
        }
        
    }
}

struct ListTapActionView_Previews: PreviewProvider {
    static var previews: some View {
        ListTapActionView()
            .preferredColorScheme(.dark)
    }
}
