//
//  ZoomAndRestInPlace.swift

import SwiftUI

struct ZoomAndRestInPlace: View {
    
    @State private var unzoomed = true
    @Namespace private var morphSeamlessly
    
    var body: some View {
        ZStack{
            if unzoomed {
                HStack(alignment: .bottom) {
                    Image("user_chew")
                        .resizable()
                        .frame(width: 36, height: 36)
                    
                    // Photo
                    VStack(alignment: .leading) {
                        ZStack {
                            VStack(spacing: 1) {
                                HStack(spacing: 1) {
                                    Image("iceland2")
                                        .resizable()
                                        .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                                        .frame(width: 126, height: 94)
                                        .zIndex(5)
                                        .onTapGesture {
                                            withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6))
                                            {
                                                unzoomed = false
                                            }
                                        }
                                    
                                    Image("iceland3")
                                        .resizable()
                                        .frame(width: 126, height: 94)
                                    
                                }
                                HStack(spacing: 1) {
                                    Image("iceland5")
                                        .resizable()
                                        .frame(width: 126, height: 94)
                                    
                                    Image("iceland7")
                                        .resizable()
                                        .frame(width: 126, height: 94)
                                }
                            }
                        }
                        .frame(width: 252, height: 188)
                        .cornerRadius(16)
                        
                        Text("Toronto time  21.00 PM")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
            } else {
                NavigationView {
                    EmptyView()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(
                            leading: Button {
                                print("Pressed close")
                            } label: {
                                Image(systemName: "xmark")
                                    .onTapGesture {
                                        withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6))
                                        {
                                            unzoomed = true
                                        }
                                    }
                            }
                        )
                }
                
                Image("iceland2")
                    .resizable()
                    .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                // Animate the aspect ratioof the photo
                    .aspectRatio(contentMode: unzoomed ? .fill: .fit)
                // You can also animate the frame
                //.frame(width: unzoomed ? 0 : .infinity, height: .infinity)
                    .zIndex(5)
                    .preferredColorScheme(.dark)
                    .onTapGesture {
                        withAnimation(.timingCurve(0.68, -0.6, 0.32, 1.6))
                        {
                            unzoomed = true
                        }
                    }
            }
        } // All view
    }
}

struct ZoomAndRestInPlace_Previews: PreviewProvider {
    static var previews: some View {
        ZoomAndRestInPlace()
            .preferredColorScheme(.dark)
    }
}
