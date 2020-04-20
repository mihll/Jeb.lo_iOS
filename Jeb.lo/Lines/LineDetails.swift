//
//  LineDetails.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct LineDetails: View {
    let line: Line
    var body: some View {
        VStack(){
            Text("Line details")
        }.navigationBarTitle(Text(line.id), displayMode: .inline)
    }
}

struct LineDetails_Previews: PreviewProvider {
    static var previews: some View {
        LineDetails(line: lineData[0])
    }
}
