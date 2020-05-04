//
//  PostComments.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 20/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PostComments: View {
    var post: Post
    
    @State var composedComment: String = ""
    @EnvironmentObject var commentsController: CommentsController
    @State private var keyboardHeight: CGFloat = 0
    
    var body: some View {
        VStack {
            List {
                ForEach(commentsController.comments, id: \.self) { comm in
                    PostCommentRow(postComment: comm)
                }
            }
            Divider()
            HStack {
                TextField("Komentarz...", text: $composedComment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: 30)
                Button(action: sendComment) {
                    Text("Wyślij")
                }
            }.padding()
        }
        .keyboardResponsive()
    }
    func sendComment() {
        if !composedComment.isEmpty {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm, dd-MM-yyyy"
            let stringOutput = formatter.string(from: Date())
            commentsController.sendComment(PostComment(comment: composedComment, dateTime: stringOutput))
            composedComment = ""
        }
    }
}

struct PostComments_Previews: PreviewProvider {
    static var previews: some View {
        PostComments(post: postData[0])
            .environmentObject(CommentsController())
    }
}
