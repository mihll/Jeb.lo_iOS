//
//  PostPhotos.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 20/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostPhotos: View {
    var post: Post
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostPhotos_Previews: PreviewProvider {
    static var previews: some View {
        PostPhotos(post: postData[0])
    }
}
