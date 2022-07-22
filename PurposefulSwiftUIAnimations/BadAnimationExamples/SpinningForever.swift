//
//  SpinningForever.swift
//  PurposefulSwiftUIAnimations
//
//  Created by amos.gyamfi@getstream.io on 18.7.2022.
//

import SwiftUI

struct SpinningForever: View {
    @State private var spinning = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Total")
                Spacer()
                Text("€17")
            }.fontWeight(.bold)
            
            Divider()
            
            HStack {
                ZStack {
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round))
                        .foregroundColor(.gray)
                        
                    Circle()
                        .trim(from: 0, to: 0.7)
                        .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round))
                        .foregroundColor(.green)
                        .rotationEffect(.radians(spinning ? .pi: -.pi*4))
                        .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: spinning)
                        .onAppear{
                            spinning.toggle()
                        }
                }
                .frame(width: 32, height: 32)
                
                VStack(alignment: .leading) {
                    Text("Items added to your order")
                        .font(.title2)
                    Text("You can no longer add additional item to this group order.")
                }
            }
            
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}

struct SpinningForever_Previews: PreviewProvider {
    static var previews: some View {
        SpinningForever()
            .preferredColorScheme(.dark)
    }
}
