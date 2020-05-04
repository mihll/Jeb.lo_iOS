//
//  PostCommentRow.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 04/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostCommentRow: View {
    var postComment: PostComment
    
    var body: some View {
        HStack(){
            postComment.image
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 50, maxHeight: 50)
                .clipped()
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(postComment.comment)
                    .font(.footnote)
                    .padding(.bottom)
                
                Text(postComment.dateTime)
                    .font(.caption)
            }
        }
    }
}

struct PostCommentRow_Previews: PreviewProvider {
    static var previews: some View {
        PostCommentRow(postComment: PostComment(comment: "To jest całkiem długi komentarz z tego co widzę tutaj możę się nie zmieścić w jednej linice.", dateTime: "21:37, 04-05-2020"))
    }
}
