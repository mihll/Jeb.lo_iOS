//
//  PostRowShort.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 03/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostRowShort: View {
    var post: Post
    var body: some View {
        NavigationLink(destination: PostDetail(post: post)){
            HStack(){
                post.image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 60, maxHeight: 60)
                    .clipped()
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    Text(post.title)
                        .font(.headline)
                        .lineLimit(1)
                    Text(post.postedDate.description)
                        .font(.footnote)
                    
                    HStack(){
                        Text(post.statusPost)
                            .font(.footnote)
                        
                        Spacer()
                        
                        Text(String(post.likes))
                            .font(.footnote)
                        
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.footnote)
                        
                        Text(String(post.dislikes))
                            .font(.footnote)
                        
                        Image(systemName: "hand.thumbsdown.fill")
                            .font(.footnote)
                        
                    }
                }
            }
        }
    }
}

struct PostRowShort_Previews: PreviewProvider {
    static var previews: some View {
        PostRowShort(post: postData[0])
    }
}
