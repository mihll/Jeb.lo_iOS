//
//  LinesTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct LinesTab: View {
    @State private var selectedOption = lineData.filter{$0.type == "T"}
    var body: some View {
        NavigationView {
            VStack(){
                Picker(selection: $selectedOption, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Tramwaje").tag(lineData.filter{$0.type == "T"})
                    Text("Autobusy").tag(lineData.filter{$0.type == "B"})
                }.padding().pickerStyle(SegmentedPickerStyle())
                List(selectedOption) { line in
                    NavigationLink(destination: LineDetails(line: line)){
                        Text(line.id)
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
