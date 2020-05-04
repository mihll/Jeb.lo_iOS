//
//  LineDetails.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct LineDetails: View {
    let line: Line
    @State private var userPosts = postData
    @State private var isShowing = false
    var body: some View {
        List(){
            ForEach(userPosts){ post in
                PostRowShort(post: post)
            }
        }
        .pullToRefresh(isShowing: $isShowing) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.isShowing = false
            }
        }.navigationBarTitle(Text(line.id), displayMode: .inline)
    }
}

struct LineDetails_Previews: PreviewProvider {
    static var previews: some View {
        LineDetails(line: lineData[0])
    }
}
