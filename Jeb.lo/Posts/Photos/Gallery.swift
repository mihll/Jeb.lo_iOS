//
//  Gallery.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 03/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Gallery: View {
    let photoPages: [PageViewData]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.photoPages, index: self.$index)
        }
        .background(Color.black)
    }
}

struct Gallery_Previews: PreviewProvider {
    static var previews: some View {
        Gallery(photoPages: [
            PageViewData(pageImage: postData[0].image),
            PageViewData(pageImage: postData[1].image),
            PageViewData(pageImage: postData[2].image)])
    }
}
