//
//  PostComment.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 04/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//
import SwiftUI

struct PostComment : Hashable {
    var comment: String
    var dateTime: String
}

extension PostComment {
    var image: Image {
        ImageStore.shared.image(name: "defaultAvatar")
    }
}
