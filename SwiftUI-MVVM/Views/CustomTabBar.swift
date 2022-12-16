//
//  CustomTabBar.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/22/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

extension Color {
    static let tabBackColor = Color("NavigationTabBackgroundColor")
}

struct CustomTabBar: View {
    @Binding var currentTab: Tab
    
    @State private var selectionGroup = false
    @State private var selectionChat = false
    @State private var selectionProfile = true
    
    var body: some View {
        HStack(spacing: UIScreen.main.bounds.width / 5) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                switch(tab.rawValue) {
                    case "locals":
                        Button(action: {
                            self.currentTab = tab
                            self.selectionGroup = true
                            self.selectionChat = false
                            self.selectionProfile = false
                        }) {
                            FontIcon
                            .text(.materialIcon(code: .group), fontsize: 38)
                            .foregroundColor(selectionGroup ? Color.white.opacity(1) : Color.white.opacity(0.4))
                        }
                    case "chat":
                        Button(action: {
                            self.currentTab = tab
                            self.selectionGroup = false
                            self.selectionChat = true
                            self.selectionProfile = false
                        }) {
                            FontIcon
                                .text(.materialIcon(code: .chat_bubble), fontsize: 38)
                                .foregroundColor(selectionChat ? Color.white.opacity(1) : Color.white.opacity(0.4))
                        }
                    case "profile":
                        Button(action: {
                            self.currentTab = tab
                            self.selectionGroup = false
                            self.selectionChat = false
                            self.selectionProfile = true
                        }) {
                            FontIcon
                                .text(.materialIcon(code: .person), fontsize: 38)
                                .foregroundColor(selectionProfile ? Color.white.opacity(1) : Color.white.opacity(0.4))
                        }
                    default:
                        Button(action: {
                            self.currentTab = tab
                        }) {
                            FontIcon
                                .text(.materialIcon(code: .chat_bubble), fontsize: 38)
                                .foregroundColor(Color.white.opacity(0.4))
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height:70)
        .background(Color.tabBackColor)
    }
}

#if DEBUG
struct CustomTabbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(currentTab: .constant(.profile))
    }
}
#endif
