//
//  PostDetail.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 20/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostDetail: View {
    var post: Post
    var body: some View {
        VStack{
            MapView(post: post)
                .frame(height: 300)
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: postData[0])
    }
}
