//
//  ContentView.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            NowTab()
                .tabItem {
                    VStack {
                        Image(systemName: "flame.fill")
                        Text("Teraz")
                    }
            }
            .tag(0)
            
            LinesTab()
                .tabItem {
                    VStack {
                        Image(systemName: "tram.fill")
                        Text("Linie")
                    }
            }
            .tag(1)
              
            StatsTab()
                .tabItem {
                    VStack {
                        Image(systemName: "speedometer")
                        Text("Statystyki")
                    }
            }
            .tag(2)
            
            ProfileTab()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
            }
            .tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 7","iPhone 11"], id: \.self) { deviceName in
            MainView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(CommentsController())
        }
    }
}
