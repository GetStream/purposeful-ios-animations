//
//  StatsView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct  StatsView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Stats")
                .font(.headline)
                .padding(.top)
                .padding(.bottom)
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 50, maxHeight: 30)
                                .foregroundColor(Color(.systemGray5))
                            Text("2")
                                .font(.footnote)
                        }
                        
                        Text("Days")
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 50, maxHeight: 30)
                                .foregroundColor(Color(.systemGray5))
                            Text("4")
                                .font(.footnote)
                        }
                        
                        Text("Main events")
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 50, maxHeight: 30)
                                .foregroundColor(Color(.systemGray5))
                            Text("38")
                                .font(.footnote)
                        }
                        
                        Text("Rooms")
                            .foregroundColor(.secondary)
                    }
                }
               
                VStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 50, maxHeight: 30)
                                .foregroundColor(Color(.systemGray5))
                            Text("120")
                                .font(.footnote)
                        }
                        
                        Text("Speakers")
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(maxWidth: 50, maxHeight: 30)
                                .foregroundColor(Color(.systemGray5))
                            Text("2K")
                                .font(.footnote)
                        }
                        
                        Text("Tickets sold")
                            .foregroundColor(.secondary)
                    }
                    
                }
            }
        } // All views
        
    }
}

struct  StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
            .preferredColorScheme(.dark)
    }
}
