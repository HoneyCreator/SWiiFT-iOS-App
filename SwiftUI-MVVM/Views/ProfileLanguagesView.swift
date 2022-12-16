//
//  ProfileLanguagesView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileLanguagesView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var primaryLanguage = DropdownOption(key: uniqueKey, value: "English")
    @State private var titleName: String = ""
    @State private var industryName: String = ""
    @State private var industryInput = false
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "English"),
        DropdownOption(key: uniqueKey, value: "Russian"),
    ]
    
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
                            Text("Languages")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack() {
                        HStack() {
                            Text("What is your primary language")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        DropdownSelector(
                            placeholder: "Select language",
                            options: ProfileLanguagesView.options,
                            onOptionSelected: { option in
                                self.primaryLanguage = option
                        })
                        .padding(.horizontal)
                    }
                    .padding(.top, 20)
                    .zIndex(1)
                    
                    HStack() {
                        Text("What other languages do you know?")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    .padding(.top, 50)
                    
                    VStack() {
                        HStack() {
                            Text("Language")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 30)
                        DropdownSelector(
                            placeholder: "Select language",
                            options: ProfileLanguagesView.options,
                            onOptionSelected: { option in
                                self.primaryLanguage = option
                        })
                        .padding(.horizontal)
                    }
                    .padding(.top, 50)
                    .zIndex(1)
//                    HStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .tracking(2)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
//                    .padding(.top, 100)
                    
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
                    .padding(.top, 100)
                    .padding(.bottom, 50)
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
struct ProfileLanguagesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLanguagesView()
    }
}
#endif
