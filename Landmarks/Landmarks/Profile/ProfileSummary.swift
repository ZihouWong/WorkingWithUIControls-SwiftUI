//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Zihou Wong on 7/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On": "Off" )")
            
            Text("Seasonal Photos: \(self.profile.seasonalPhoto.rawValue)")
            
            Text("Goal Date: \(self.profile.goalDate, formatter: Self.goalFormat)")
            VStack {
                Text("Complete Badge")
                    .font(.headline)
                ScrollView {
                    HStack {
                        HikeBadge(name: "First Hike")
                        
                        HikeBadge(name: "Earth day")
                               .hueRotation(Angle(degrees: 90))
                           
                        HikeBadge(name: "Tenth like")
                               .grayscale(0.5)
                               .hueRotation(Angle(degrees: 45))
                    }
                }
                .frame(height: 140)
                
                VStack(alignment: .trailing) {
                    Text("Recent Hikes")
                        .font(.headline)
                    HikeView(hike: hikeData[0])
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: Profile.default)
        }
    .padding()
        
    }
}
