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
                    Text(post.place)
                        .font(.headline)
                        .lineLimit(1)
                    Text(post.addedDate)
                        .font(.footnote)
                    
                    HStack(){
                        Text(post.status)
                            .font(.footnote)
                        
                        Spacer()
                        
                        Text(String(post.upvotes))
                            .font(.footnote)
                        
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.footnote)
                        
                        Text(String(post.downvotes))
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
