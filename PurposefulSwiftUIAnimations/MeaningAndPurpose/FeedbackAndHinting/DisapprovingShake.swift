//
//  DisapprovingShake.swift
//  PurposefulSwiftUIAnimations
//
//  ANIMATION AND MEANING: Use animation to communicate feedback. For example, the disapproving shake of FaceID signifies the need to feel ok and try again.
//

import SwiftUI

struct DisapprovingShake: View {
    @State private var shake = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "faceid")
                    .font(.system(size: 64))
                    .padding()
                    .offset(x: shake ? 0 : 60)
                    .onAppear{
                        withAnimation(.interactiveSpring(
                            response: 0.15,
                            dampingFraction: 0.25,
                            blendDuration: 0)
                            .repeatForever(autoreverses: false)) {
                                shake.toggle()
                            }
                    }
                    
                
                Text("Face Not Recognized")
                    .font(.title)
                Text("Try Again")
                
                Divider()
                
                Button("Try FaceID Again") {
                    //
                }
                .fontWeight(.bold)
                
                Divider()
                
                Button("Cancel") {
                    //
                }
        }
        .frame(width: UIScreen.main.bounds.width/1.4)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)
        .navigationTitle("Log in with FaceID")
        }
    }
}

struct DisapprovingShake_Previews: PreviewProvider {
    static var previews: some View {
        DisapprovingShake()
            .preferredColorScheme(.dark)
    }
}
