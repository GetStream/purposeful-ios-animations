//
//  PartnersView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  PartnersView: View {
    
    let eventsBg = Color(#colorLiteral(red: 0.05490196078, green: 0.09019607843, blue: 0.137254902, alpha: 1))
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Partners")
                .font(.headline)
            Image("canary")
            Image("crowdstrike")
            Image("goguardian")
        } // All Views
        .frame(width: .infinity)
        .padding()
        //.background(Color(.systemGray))
        
    }
}

struct  PartnersView_Previews: PreviewProvider {
    static var previews: some View {
        PartnersView()
            .preferredColorScheme(.dark)
    }
}
