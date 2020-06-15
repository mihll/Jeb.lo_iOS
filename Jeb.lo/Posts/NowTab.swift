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
    @State private var selectedOption = [Post]();
    @State private var downloadedData = [Post]();
    @State private var isShowing = false
    var body: some View {
        NavigationView(){
            VStack(){
                Picker(selection: $selectedOption, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Lokalizacja").tag(postData)
                    Text("Ulubione").tag(postDataFav)
                }.padding().pickerStyle(SegmentedPickerStyle())
                
                List(){
                    ForEach(downloadedData){ post in
                        PostRow(post: post)
                            .listRowInsets(EdgeInsets())
                    }
                }.padding(.trailing, -32.0)
                 .onAppear(perform: loadData)
                 .pullToRefresh(isShowing: $isShowing) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.isShowing = false
                    }
                }
                
            }.navigationBarTitle("Teraz")
        }
    }
    
    func loadData() {
        guard let url = URL(string: "https://jeblo-back-stage.herokuapp.com/posts/") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        print("Request started")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Post].self, from: data) {
                    DispatchQueue.main.async {
                        self.downloadedData = decodedResponse
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
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
