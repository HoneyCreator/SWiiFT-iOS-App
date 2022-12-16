//
//  ProfileCountryCountView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileCountryCountView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var countryCount: String = ""
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
                            Text("Country Count")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    HStack() {
                        Text("How many countries have you traveled to?")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                    .padding(.top, 20)
                    
                    HStack() {
                        Text("Need help remembering?")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                    .padding(.top, 20)
                    
                    HStack() {
                        Text("See our list of countries.")
                            .foregroundColor(Color.globalButtonColor)
                            .font(.system(size: 20))
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                    .padding(.top, 20)
                    
                    VStack() {
                        ZStack(alignment: .leading) {
                            if countryCount.isEmpty {
                                Text("Enter a number")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $countryCount)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
//                                .keyboardType(.decimalPad)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 20)
//                    HStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .tracking(2)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
//                    .padding(.top, 150)
                    
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
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .padding(.top, 150)
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
struct ProfileCountryCountView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCountryCountView()
    }
}
#endif
