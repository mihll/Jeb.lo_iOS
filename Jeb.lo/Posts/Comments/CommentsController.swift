//
//  CommentsController.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 04/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import Combine
import SwiftUI

class CommentsController : ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    @Published var comments = [
        PostComment(comment: "To jest całkiem długi komentarz z tego co widzę tutaj możę się nie zmieścić w jednej linice.", dateTime: "21:37, 04-05-2020"),
        PostComment(comment: "A to jest drugi całkiem długi komentarz z tego co widzę tutaj możę się nie zmieścić w jednej linice.", dateTime: "21:37, 04-05-2020")
    ]
    
    func sendComment(_ postComment: PostComment) {
        comments.append(postComment)
        didChange.send(())
    }
}
