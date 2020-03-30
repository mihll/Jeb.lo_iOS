//
//  LineDetails.swift
//  Jeb.lo
//
//  Created by Michał Kierzkowski on 30/03/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct LineDetails: View {
    let line: LocalizedStringKey
    var body: some View {
        VStack(){
            Text("Line details")
        }.navigationBarTitle(line, displayMode: .inline)
    }
}

struct LineDetails_Previews: PreviewProvider {
    static var previews: some View {
        LineDetails(line: "1")
    }
}
