//
//  BubbleEffectsView.swift
//  iMessageClone
//
//  Created by Amos from getstream.io on 18.12.2021.
//

import SwiftUI

struct  BubbleEffectsView: View {
    let incomingMessaageBubble = Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1607843137, alpha: 1))
    let accentPrimary = Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    @State private var messageEffect = 0

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack(alignment: .trailing, spacing: 54) {
                        Text("Send with Slam")
                            .font(.headline)
                        Text("Send with Loud")
                            .font(.headline)
                        Text("Send with Gentle")
                            .font(.headline)
                    }
                    .textCase(.uppercase)
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 110, trailing: 64))
                Spacer()
            }
            TabView {
                HStack {
                    Spacer()
                    VStack {
                        SlamEffect()
                        LoudEffect()
                        GentleEffect()
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 48, trailing: 48))
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            VStack {
                Text("Send with effect")
                    .font(.title2)
                Picker("What is your favorite message effect?", selection: $messageEffect) {
                    Text("Bubble").tag(0)
                    Text("Screen").tag(1)
                }
                .pickerStyle(.segmented)
                
                Spacer()
            }
            .padding()
        
        } // All effects views
        
    }
}

struct  BubbleEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleEffectsView()
            .preferredColorScheme(.dark)
    }
}
