//
//  SinglePhotoZoom.swift

import SwiftUI

struct SinglePhotoZoom: View {
    
    @State private var unzoomed = true // Single tap to fit to center
    @Namespace private var morphSeamlessly
    
    var body: some View {
        if unzoomed {
            HStack(alignment: .bottom) {
                Image("user_chew")
                    .resizable()
                    .frame(width: 36, height: 36)
                
                // Photo
                VStack(alignment: .leading) {
                    Image("iceland4")
                        .resizable()
                        .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                        .frame(width: 252, height: 188)
                        .cornerRadius(16)
                        .onTapGesture {
                            withAnimation(.interpolatingSpring(stiffness: 170, damping: 25))
                            {
                                unzoomed = false
                            }
                        }
                        
                    Text("Toronto time  21.00 PM")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        } else {
            VStack {
                NavigationView {
                    EmptyView()
                        .navigationTitle(Text("Count Dooku"))
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(
                            leading: Button {
                                print("Pressed close")
                            } label: {
                                Image(systemName: "xmark")
                                    .onTapGesture {
                                        withAnimation(.easeInOut)
                                        {
                                            unzoomed = true
                                        }
                                }
                            }
                        )
                }
                
                Image("iceland4")
                    .resizable()
                    .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                    //.aspectRatio(contentMode: unzoomed ? .fit : .fill)
                   
                    .onTapGesture {
                        withAnimation(.easeInOut)
                        {
                            unzoomed = true
                        }
                }
                
                Spacer(minLength: 200)
                
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Spacer()
                }
                
                Spacer()
                
            } // All views
            .padding()
        }
        
    }
}

struct SinglePhotoZoom_Previews: PreviewProvider {
    static var previews: some View {
        SinglePhotoZoom()
            .preferredColorScheme(.dark)
    }
}
