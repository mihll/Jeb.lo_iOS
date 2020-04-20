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
        ScrollView(){
            MapView(post: post)
                .frame(height: 200)
            
            HStack(){
                VStack(alignment: .center){
                    Text("Przystanek")
                        .font(.headline)
                    Text(post.stop)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }.padding()
                
                VStack(){
                    Text("Linia")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    Text(post.line)
                        .font(.subheadline)
                }.padding()
                
                VStack(alignment: .center){
                    Text("Dodano")
                        .font(.headline)
                    Text(post.addedDate)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }.frame(maxWidth: 100)
                    .padding()
            }
            
            HStack(){
                Text(String(post.upvotes))
                    .font(.title)
                    .fontWeight(.semibold)
                Image(systemName: "hand.thumbsup")
                    .padding(.trailing)
                    .font(.title)
                
                
                Text(String(post.downvotes))
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading)
                
                Image(systemName: "hand.thumbsdown")
                    .font(.title)
            }
            
            HStack(){
                VStack(alignment: .leading){
                    Text("Opis")
                        .font(.title)
                        .padding(.bottom)
                    Text(post.description)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }.padding()
            
            HStack(){
                NavigationLink(destination: PostPhotos(post: post)){
                    Text("Zdjęcia")
                        .frame(width: 150, height: 50)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: PostComments(post: post)){
                    Text("Komentarze")
                        .frame(width: 150, height: 50)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding(.top)
            
        }.navigationBarTitle(Text(post.place), displayMode: .inline)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: postData[1])
    }
}
