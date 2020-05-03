//
//  UserPosts.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 20/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct UserPosts: View {
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
        }.navigationBarTitle("Twoje posty", displayMode: .inline)
    }
}

struct UserPosts_Previews: PreviewProvider {
    static var previews: some View {
        UserPosts()
    }
}
