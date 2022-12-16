//
//  ContentView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/22/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SendBirdUIKit

extension Color {
    static var cameraBackColor = Color("CameraBackgroundColor")
    static var levelBackColor = Color("LeverlBackgroundColor")
    static var hDividerColor = Color("DarkHDivider")
    static var hobbyBackColor = Color("HobbyItemBackgroundColor")
}

struct ContentView: View {
    @State var currentTab: Tab = .profile
    
    init() {
        UITabBar.appearance().isHidden = true
        
        let APP_ID = "01136755-C514-46EE-8616-A506906E6A86"
        SBUMain.initialize(applicationId: APP_ID) {
        } migrationHandler: {
        } completionHandler: { error in
        }
        let USER_ID = "ismail0909"
        let NICK_NAME = "RAHMAN"
        let PROFILE_URL = "https://ca.slack-edge.com/TCYEB44S2-U040Z2X8A9Y-fb91749c8ec0-512"
        SBUGlobals.CurrentUser = SBUUser(userId: USER_ID, nickname:NICK_NAME, profileUrl:PROFILE_URL)
        SBUMain.connect { (user, error) in
            // user object will be an instance of SBDUser
            guard let _ = user else {
                print("ContentView: init: Sendbird connect: ERROR: \(String(describing: error)). Check applicationId")
                return
            }
        }
    }
    
    var body: some View {
//        NavigationView {
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    LocalsChatView()
                        .tag(Tab.locals)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    
                    ChannelListViewContainer()
                        .tag(Tab.chat)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    
                    ProfileView()
                        .tag(Tab.profile)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("")
            .navigationBarHidden(true)
//        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
