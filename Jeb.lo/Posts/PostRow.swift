//
//  PostRow.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 06/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostRow: View {
    var post: Post
    var body: some View {
        NavigationLink(destination: PostDetail(post: post)){
            ZStack(alignment: .bottomLeading){
                post.image
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 250)
                    .clipped()
                    .overlay(Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                        .clipped())
                
                VStack(alignment: .leading){
                    HStack() {
                        Text(post.statusPost + " - " + post.linesBlocked[0])
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.leading)
                        
                        Spacer()
                        
                        HStack(){
                            Text(String(post.likes))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Image(systemName: "hand.thumbsup.fill")
                                .foregroundColor(.white)
                            
                            Text(String(post.dislikes))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                            Image(systemName: "hand.thumbsdown.fill")
                                .foregroundColor(.white)
                        }.padding(.trailing, 32.0)
                    }
                    Text(post.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding([.leading, .bottom, .trailing])
                }
            }
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: postData[0])
    }
}

