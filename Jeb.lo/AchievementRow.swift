//
//  AchievementRow.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 20/04/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct AchievementRow: View {
    var achievement: Achievement
    var body: some View {
        HStack{
            Image(achievement.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 80, maxHeight: 80)
                .clipped()
            VStack(alignment: .leading){
                Text(achievement.name)
                    .font(.headline)
                Text(achievement.description)
                    .font(.subheadline)
                Text("Zdobyto: " + achievement.date)
                    .font(.footnote)
                    .padding(.top)
            }
            .padding(.leading)
        }
    }
}

struct AchievementRow_Previews: PreviewProvider {
    static var previews: some View {
        AchievementRow(achievement: achievementData[0])
    }
}
