//
//  PageView.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 03/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PageViewData: Identifiable {
    let id: String = UUID().uuidString
    let pageImage: Image
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        viewData.pageImage
            .resizable()
            .scaledToFit()
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(viewData: PageViewData(pageImage: postData[0].image))
    }
}
