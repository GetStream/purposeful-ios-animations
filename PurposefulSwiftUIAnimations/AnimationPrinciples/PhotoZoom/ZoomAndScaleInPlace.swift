//
// ZoomAndScaleInPlace.swift


import SwiftUI

struct ZoomAndScaleInPlace: View {

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
                                        .frame(width: 126, height: 94, alignment: .bottomTrailing)
                                        .zIndex(5)
                                        
                                    Image("iceland3")
                                        .resizable()
                                        .frame(width: 126, height: 94)
                                        
                                }
                                HStack(spacing: 1) {
                                    Image("iceland5")
                                        .resizable()
                                        .frame(width: 126, height: 94)
                                        
                                    Image("iceland4")
                                        .resizable()
                                        .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                                        .frame(width: 126, height: 94)
                                        .onTapGesture {
                                            withAnimation(.interpolatingSpring(stiffness: 170, damping: 25))
                                            {
                                                unzoomed = false
                                            }
                                        }
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
                VStack {
                    NavigationView {
                        EmptyView()
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
                        // Animate the aspect ratio of the photo
                        .aspectRatio(contentMode: unzoomed ? .fit : .fill)
                        //.frame(width: .infinity, height: .infinity)
                        .zIndex(5)
                        // You can also animate the scale effect
                        //.scaleEffect(unzoomed ? 0 : 1)
                        .preferredColorScheme(.dark)
                        .onTapGesture {
                            withAnimation(.easeInOut)
                            {
                                unzoomed = true
                            }
                    }
                    
                    Color.clear
                }
            }
        } // All view
        
    }
}

struct ZoomAndScaleInPlace_Previews: PreviewProvider {
    static var previews: some View {
        ZoomAndScaleInPlace()
            .preferredColorScheme(.dark)
    }
}
