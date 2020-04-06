//
//  StatsTab.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct StatsTab: View {
    var body: some View {
        Text("Stats")
    }
}

struct StatsTab_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 7","iPhone 11"], id: \.self) { deviceName in
            StatsTab()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
