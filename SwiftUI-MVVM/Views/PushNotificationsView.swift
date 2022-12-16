//
//  PushNotificationsView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/19/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct PushNotificationsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileMeetingSetup: Int? = nil
    @State private var profileSetupFinal: Int? = nil
    @State private var notificaitonState = false
    var notificationType = ""
    init(notificationType: String) {
        self.notificationType = notificationType
    }
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    VStack(spacing: 0.0) {
                        HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                FontIcon
                                    .text(.materialIcon(code: .arrow_back), fontsize: 33)
                                    .foregroundColor(Color.white.opacity(0.4))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        .padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 0))
                        .zIndex(1)
                        HStack {
                            Text("Notifications")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                        .padding(.leading, 0)
                    }
                    
                    VStack() {
                        Image("PaperAirplane")
                            .scaledToFit()
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 50))
                            .frame(width: UIScreen.main.bounds.width)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.top, 20)
                    
                    VStack() {
                        Text("Get your messages")
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 30)
                    
                    VStack() {
                        Text("Turn on push notifications so you know when you have a new message in the Chat.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 20)
                                            
                    VStack() {
                        NavigationLink(destination: ProfileSetupFinalView(), tag: 2, selection: $profileSetupFinal) {
                            Button(action: {
                                print("Notifications")
                                self.profileSetupFinal = 2
                                self.notificaitonState.toggle()
                            }) {
                                Text("TURN ON NOTIFICATIONS")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)
                                    
                            }
                            .padding(.vertical, 15)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50, alignment: .bottomTrailing)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 50)
                    
                    if self.notificationType == "profileSetup" {
                        VStack() {
                            NavigationLink(destination: ProfileSetupFinalView(), tag: 2, selection: $profileSetupFinal) {
                                Button(action: {
                                    self.profileSetupFinal = 2
                                }) {
                                    Text("Next")
                                        .foregroundColor(Color.skipButtonColor)
                                        .font(.system(size: 22))
                                        .fontWeight(.medium)
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 30)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
            }
            .frame(alignment: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .background(Color.tabBackColor)
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct PushNotificationsView_Preview: PreviewProvider {
    static var previews: some View {
        PushNotificationsView(notificationType: "profileSetup")
    }
}
#endif
