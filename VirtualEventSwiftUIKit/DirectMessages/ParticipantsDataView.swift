//
//  ParticipantsDataView.swift
//  Virtual Event SwiftUIKit
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct ParticipantsDataView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("adwoa")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Chiara Steinbeck")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Miller, O'Conner and Nicolas")
                        .font(.footnote)
                }
            }// Participant 1
            
            HStack {
                Image("kwadwo")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Maren Septimus")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Miller, O'Conner and Nicolas")
                        .font(.footnote)
                }
            }// Participant 2
            
            HStack {
                Image("afia")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Lincoln Culhane")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Keebler LLC")
                        .font(.footnote)
                }
            }// Participant 3
            
            HStack {
                Image("akua")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Chiara Steinbeck")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Keebler LLC")
                        .font(.footnote)
                }
            }// Participant 4
            
            HStack {
                Image("kwasi")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Vika Lo")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Grimes, Bashirian and Nolan")
                        .font(.footnote)
                }
            }// Participant 5
            
            HStack {
                Image("kofi")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Angel Kenter")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Baumbach, Weissnat and Herzog")
                        .font(.footnote)
                }
            }// Participant 6
            
            HStack {
                Image("yaw")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Madelyn Kenter")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Upton, Pfeffer and Hodkiewicz")
                        .font(.footnote)
                }
            }// Participant 7
            
            HStack {
                Image("ama")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Lincoln Culhane")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Designer. Speaker. Lifelong Learner.")
                        .font(.footnote)
                }
            }// Participant 8
            
            HStack {
                Image("yaa")
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Marilyn Curtis")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Text("Keebler LLC")
                        .font(.footnote)
                }
            }// Participant 9
            
            
            Group{
                HStack {
                    Image("kwasi")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Amos the Gyamfi")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Designer. Speaker. Lifelong Learner.")
                            .font(.footnote)
                    }
                }// Participant 10
                
                HStack {
                    Image("yaa")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lincoln Culhane")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Baumbach, Weissnat and Herzog")
                            .font(.footnote)
                    }
                }// Participant 11
                
                HStack {
                    Image("kofi")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Grimes, Bashirian and Nolan")
                            .font(.footnote)
                    }
                }// Participant 12
                
                HStack {
                    Image("afia")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Upton, Pfeffer and Hodkiewicz")
                            .font(.footnote)
                    }
                }// Participant 13
                
                HStack {
                    Image("abena")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Grimes, Bashirian and Nolan")
                            .font(.footnote)
                    }
                }// Participant 14
                
                HStack {
                    Image("kwaku")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Upton, Pfeffer and Hodkiewicz")
                            .font(.footnote)
                    }
                }// Participant 15
                
                HStack {
                    Image("akua")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Grimes, Bashirian and Nolan")
                            .font(.footnote)
                    }
                }// Participant 16
                HStack {
                    Image("adwoa")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Grimes, Bashirian and Nolan")
                            .font(.footnote)
                    }
                }// Participant 16
                HStack {
                    Image("kwasi")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Lydia Rosser")
                            .font(.footnote)
                            .fontWeight(.bold)
                        Text("Grimes, Bashirian and Nolan")
                            .font(.footnote)
                    }
                }// Participant 16
            }
            
        } // All Views
    }
}

struct ParticipantsDataView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantsDataView()
            .preferredColorScheme(.dark)
    }
}
