//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Zihou Wong on 7/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    var body: some View {
        VStack {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
            .accessibility(label: Text("Badge for\(name)"))
        }
        
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Hike")
    }
}
