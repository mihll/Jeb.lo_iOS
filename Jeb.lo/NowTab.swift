//
//  NowTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct NowTab: View {
    @State private var selectedOption = 0
    var body: some View {
        NavigationView {
            VStack(){
                Picker(selection: $selectedOption, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Lokalizacja").tag(0)
                    Text("Ulubione").tag(1)
                }.padding().pickerStyle(SegmentedPickerStyle())
                List {
                /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                }
            }.navigationBarTitle("Teraz")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NowTab_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 7", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            NowTab()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
