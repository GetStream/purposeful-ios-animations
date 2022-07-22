//
//  SlideToPowerOff.swift
//  Slide To Power Off
//
//  ANIMATION AND MEANING
//  When used in a subtle way, it can invite users to interact with it. For example, iOS slide to power off.
//

import SwiftUI

struct SlideToPowerOff: View {
    @State private var isShimmering = false
    let phoneScreen = Image("bg1")
    
    var body: some View {
        
        ZStack {
            
            phoneScreen
                .blur(radius: 10)
                .ignoresSafeArea(.all)
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 32)
                        .foregroundColor(Color(.systemGray))
                        .foregroundStyle(.green, .ultraThickMaterial)
                        .blendMode(.plusLighter)
                    
                    HStack {
                        Image(systemName: "power.circle.fill")
                            .font(.system(size: 54))
                        
                        Text("**Slide to power off**")
                            .foregroundStyle(
                                LinearGradient(
                                    gradient: Gradient(
                                        colors: [Color.black, Color.white]),
                                    startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                    endPoint: isShimmering ? .trailing : .leading))
                            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: false), value: isShimmering)
                            .onAppear {
                                isShimmering.toggle()
                            }
                        
                        Spacer()
                    }
                    
                }
                .frame( maxWidth: 250, maxHeight: 64)
                
                VStack {
                    Spacer()
                    Text("Cancel")
                }
                
                Spacer()
            }
            .frame( maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
            .padding(.top, 150)
            .padding(.bottom, 120)
        }
    }
}

struct SlideToPowerOff_Previews: PreviewProvider {
    static var previews: some View {
        SlideToPowerOff()
            .preferredColorScheme(.dark)
    }
}
