//
//  LinesTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct LinesTab: View {
    @State private var selectedOption = 0
    var body: some View {
        NavigationView {
            VStack(){
                Picker(selection: $selectedOption, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Tramwaje").tag(0)
                    Text("Autobusy").tag(1)
                }.padding().pickerStyle(SegmentedPickerStyle())
                List{
                    NavigationLink(destination: LineDetails(line: "1")){
                        Text("1")
                    }
                    NavigationLink(destination: LineDetails(line: "2")){
                        Text("2")
                    }
                    NavigationLink(destination: LineDetails(line: "4")){
                        Text("4")
                    }
                    NavigationLink(destination: LineDetails(line: "5")){
                        Text("5")
                    }
                    NavigationLink(destination: LineDetails(line: "6")){
                        Text("6")
                    }
                }
            }.navigationBarTitle("Linie")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LinesTab_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone 7","iPhone 11"], id: \.self) { deviceName in
            LinesTab()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
