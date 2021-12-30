//
// MessageListView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct MessageListView: View {
    
    var body: some View {
        List {
           ListItem4View()
           ListItem3View()
           ListItem1View()
           ListItem2View() 
            }
            .listStyle(.sidebar)
            .frame(width: .infinity)
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
            .preferredColorScheme(.dark)
    }
}
