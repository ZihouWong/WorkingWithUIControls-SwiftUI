//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Zihou Wong on 7/9/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfile = Profile.default
    var body: some View {
        Text("Profile for \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
