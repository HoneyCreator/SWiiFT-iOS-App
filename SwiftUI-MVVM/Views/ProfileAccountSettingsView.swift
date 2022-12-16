//
//  ProfileAccountSettingsView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/21/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileAccountSettingsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var selectionEditAccount: Int? = nil
    @State private var selectionDelete: Int? = nil
    @State private var selectionNotification: Int? = nil
    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            FontIcon
                .text(.materialIcon(code: .arrow_back), fontsize: 33)
                .foregroundColor(Color.white.opacity(0.4))
        }
    }
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .center) {
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
                            Text("Account Settings")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    Group {
                        VStack {
                            VStack {
                                HStack() {
                                    Text("First Name")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("First Name")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            
                            VStack {
                                HStack() {
                                    Text("Last Name")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Last Name")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Email")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Email Address")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Age")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("YY")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Gender")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Male")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Country of Origin")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Country")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Current Location Address")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Street Address")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("City")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("State")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                            
                            VStack {
                                HStack() {
                                    Text("Status")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 14))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                VStack() {
                                    ZStack(alignment: .leading) {
                                        Text("Local/Traveler")
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .padding(.top, 5)	
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 5)
                            }
                            .padding(.top, 20)
                        }
                        .padding(.top, 40)
                    }
                    
                    Group {
                        VStack {
                            NavigationLink(destination: ProfileAccountEditView(), tag: 2, selection: $selectionEditAccount) {
                                Button(action: {
                                    self.selectionEditAccount = 2
                                }) {
                                    HStack() {
                                        Text("Edit Account Settings")
                                            .foregroundColor(Color.globalButtonSecondColor)
                                            .font(.system(size: 24))
                                            .fontWeight(.medium)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                }
                            }
                        }
                        .padding(.top, 50)
                        .padding(.bottom, 50)
                        
                        VStack {
                            NavigationLink(destination: PushNotificationsView(notificationType: "other"), tag: 4, selection: $selectionNotification) {
                                Button(action: {
                                    self.selectionNotification = 4
                                }) {
                                    HStack() {
                                        Text("Notifications")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .fontWeight(.medium)
                                        
                                        Spacer()
                                        
                                        FontIcon
                                            .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                            .foregroundColor(Color.white.opacity(0.4))
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                }
                            }
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                            .padding(.top, 5)
                        }
                        .padding(.top, 10)
                        
                        VStack {
                            NavigationLink(destination: ProfileAccountDeleteView(), tag: 3, selection: $selectionDelete) {
                                Button(action: {
                                    self.selectionDelete = 3
                                }) {
                                    HStack() {
                                        Text("Delete Account")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .fontWeight(.medium)
                                        
                                        Spacer()
                                        
                                        FontIcon
                                            .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                            .foregroundColor(Color.white.opacity(0.4))
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                }
                            }
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                            .padding(.top, 5)
                        }
                        .padding(.top, 10)
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
struct ProfileAccountSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountSettingsView()
    }
}
#endif
