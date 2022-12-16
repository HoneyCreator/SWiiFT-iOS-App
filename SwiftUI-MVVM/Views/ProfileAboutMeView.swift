//
//  ProfileAboutMeView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileAboutMeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var aboutMe: String = ""
    @State private var inputAboutMe = false
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack() {
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
                            Text("About Me")
                                .foregroundColor(Color.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack {
                        HStack() {
                            Text("Tell other SWiiFT users who you are and some things you like to do in a sentence or two!")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
                        
                        VStack() {
                            if aboutMe.isEmpty && !inputAboutMe {
                                Button(action: {
                                    self.inputAboutMe = true
                                }) {
                                    Text("e.g. grab drinks / share a meal / go out tonight / play sports / explore the city / visit a museum...")
                                    .font(.system(size: 24))
                                    .foregroundColor(Color.white)
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                                    .multilineTextAlignment(.leading)
                                }
                            } else {
                                if #available(iOS 14.0, *) {
                                    TextEditor(text: $aboutMe)
                                        .padding()
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 300)
                                        .background(Color.white.opacity(0.15))
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 300, alignment: .topLeading)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, style: StrokeStyle(lineWidth: 1))
                        )
                        .padding(.top, 60)
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
                    .padding(.top, 30)
                    
//                    HStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .tracking(2)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
//                    .padding(.top, 50)
                    
                    VStack() {
                        Button(action: {
                            print("SUBMIT for Profile Picture Setup")
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack() {
                                Text("SAVE")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)
                            }
                            .padding(.vertical, 15)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 90)
                    .padding(.bottom, 50)
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 35, trailing: 30))
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
struct ProfileAboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAboutMeView()
    }
}
#endif
