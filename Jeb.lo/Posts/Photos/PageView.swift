//
//  PageView.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 03/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI
import RemoteImage

struct PageViewData: Identifiable {
    let id: String = UUID().uuidString
    let photoUrl: String
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        RemoteImage(type: .url(URL(string: viewData.photoUrl)!), errorView: { error in
            Image("no-photo")
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 250)
            .clipped()
            .overlay(Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                .clipped())
        }, imageView: { image in
            image
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 250)
            .clipped()
            .overlay(Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                .clipped())
        }, loadingView: {
            Image("no-photo")
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 250)
            .clipped()
            .overlay(Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                .clipped())
        })
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(viewData: PageViewData(photoUrl: "https://www.wroclaw.pl/files/cmsdocuments/6609249/wypadek%20mickiewicza1.jpg"))
    }
}
