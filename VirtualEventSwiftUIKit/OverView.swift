//
//  OverView.swift
//  VirtualEventSwiftUIKit
//
//  Created by Amos from getstream.io on 01.11.2021.
//

import SwiftUI

struct OverView: View {
    
    let scrollBG = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    
    var body: some View {
        VStack {
            HeaderView()
            VStack(spacing: 0) {
                TitleView()
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 16) {
                        PresenterView()
                        StatsView()
                        DescriptionView()
                        PartnersView()
                    }
                }
                .padding(.top)
                .background(scrollBG)
            }
           
            
            TabBarView()
        } // All Views
        .padding()
    }
}

struct OverView_Previews: PreviewProvider {
    static var previews: some View {
        OverView()
            .preferredColorScheme(.dark)
    }
}
