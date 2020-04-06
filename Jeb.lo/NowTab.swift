//
//  NowTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI
import SwiftUIRefresh

struct NowTab: View {
    @State private var selectedOption = 0
    @State private var isShowing = false
    var body: some View {
        NavigationView(){
            VStack(){
                Picker(selection: $selectedOption, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Lokalizacja").tag(0)
                    Text("Ulubione linie").tag(1)
                }.padding().pickerStyle(SegmentedPickerStyle())
                
                List(){
                    ForEach(postData){ post in
                    PostRow(post: post)
                    .listRowInsets(EdgeInsets())
                    }
                }.padding(.trailing, -32.0)
                 .pullToRefresh(isShowing: $isShowing) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.isShowing = false
                    }
                }
                
            }.navigationBarTitle("Teraz")
        }
    }
    
}

struct NowTab_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 7", "iPhone 11"], id: \.self) { deviceName in
            NowTab()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
