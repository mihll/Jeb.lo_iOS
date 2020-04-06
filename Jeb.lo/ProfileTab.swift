//
//  ProfileTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        NavigationView {
            ScrollView(){
                HStack(){
                    Image("glowne")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(minHeight: 150)
                        .padding()
                        .shadow(radius: 10)
                    
                    VStack(alignment: .leading){
                        Text("mihll")
                            .font(.largeTitle)
                    
                        Text("Dołączył:")
                            .font(.subheadline)
                        
                        Text("05 marca 2020")
                            .font(.subheadline)
                    }
                }
                
                HStack(){
                    NavigationLink(destination: UserPosts()){
                        VStack(){
                        Text("Posty")
                            .font(.headline)
                        Text("5")
                            .font(.title)
                        }
                    }.padding()
                    VStack(){
                        Text("Komentarze")
                            .font(.headline)
                        Text("13")
                            .font(.title)
                    }.padding()
                    
                    VStack(){
                        Text("Ranga")
                            .font(.headline)
                        Text("25")
                            .font(.title)
                    }.padding()
                }
                
                Text("Osiągnięcia")
                    .font(.largeTitle)
                    .padding()
                
                List {
                /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                }
                
            }.navigationBarTitle("Profil")
        }
    }
}

struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
                ForEach(["iPhone 7","iPhone 11"], id: \.self) { deviceName in
            ProfileTab()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
