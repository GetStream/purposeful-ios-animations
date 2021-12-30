//
//  ParticipantsView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 10/12/2021.
//

import SwiftUI

struct ParticipantsView: View {
    let composeButton = Color(#colorLiteral(red: 0.08235294118, green: 0.1411764706, blue: 0.2196078431, alpha: 1))
    let borderColor = Color(#colorLiteral(red: 0.1058823529, green: 0.1764705882, blue: 0.2745098039, alpha: 1))
    let DefaultLight = Color(#colorLiteral(red: 0, green: 0.4235294118, blue: 1, alpha: 1))
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(composeButton)
                        .frame(width: 40, height: 40)
                    Image(systemName: "xmark")
                        .foregroundColor(DefaultLight)
                }
                
                Spacer()
                
                Text("Select a participants")
                    .font(.footnote)
                    
                Spacer()
                
        }
            Divider()
            
            ScrollView(.vertical){
                HStack {
                    ParticipantsDataView()
                    Spacer()
                }
            }
           
    }
    .padding()
}
}
    
struct ParticipantsView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantsView()
            .preferredColorScheme(.dark)
    }
}
