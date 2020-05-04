//
//  SwiperView.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 03/05/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct SwiperView: View {
    let pages: [PageViewData]
    
    @Binding var index: Int
    @State private var offset: CGFloat = 0
    @State private var isUserSwiping: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(self.pages) { viewData in
                        PageView(viewData: viewData)
                            .frame(width: geometry.size.width,
                                   height: geometry.size.height)
                    }
                }
            }
            .content
            .offset(y: self.isUserSwiping ? self.offset : CGFloat(self.index) * -geometry.size.height)
            .frame(height: geometry.size.height, alignment: .top)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.isUserSwiping = true
                        self.offset = value.translation.height + -geometry.size.height * CGFloat(self.index)
                    })
                    .onEnded({ value in
                        if value.predictedEndTranslation.height < geometry.size.height / 2, self.index < self.pages.count - 1 {
                            self.index += 1
                        }
                        if value.predictedEndTranslation.height > geometry.size.height / 2, self.index > 0 {
                            self.index -= 1
                        }
                        withAnimation {
                            self.isUserSwiping = false
                        }
                    })
            )
        }
    }
}
