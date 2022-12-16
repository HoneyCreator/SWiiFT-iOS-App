//
//  ChatsView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ChatsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var localTravel: String = ""
    @State private var localTravelSearch = false
    @State private var showSuggestionDialog = false
    @State private var output: String = ""
    @State private var showCompatibilityDialog = false
    @State private var navigationToChat: Int? = nil
    
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
                VStack() {
                    VStack(spacing: 0.0) {
                        HStack {
                            Text("Chats")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    .padding(.top, 50)
                    
                    VStack() {
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .search), fontsize: 33)
                                .foregroundColor(Color.white.opacity(0.4))
                            if localTravel.isEmpty {
                                Text("Search Name")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                            }
                            TextField("", text: $localTravel, onEditingChanged: {
                                self.localTravelSearch = $0 // true
                            }, onCommit: {
                                self.output = localTravel
                            })
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
//                                .keyboardType(.decimalPad)
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 70)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 20)
                    .zIndex(1)
                    
                    HStack() {
                        Text("Pull to refresh")
                            .foregroundColor(Color.white)
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 10)
                    
                    Group {
                        NavigationLink(destination: DetailedChatView(), tag: 1, selection: $navigationToChat) {
                            Button(action: {
                                self.navigationToChat = 1
                            }) {
                                HStack() {
                                    
                                    VStack() {
                                        HStack() {
                                            Image("LocalUserDefaultAvatar")
                                                .resizable()
                                                .scaledToFill()
                                        }
                                        .frame(width: 100, height: 100)
                                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                                    }
                                    .frame(width: 100)
                                    
                                    Spacer()
                                    
                                    VStack(spacing: 10.0) {
                                        HStack {
                                            Text("First")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                            
                                            Spacer()
                                            
                                            Text("Time")
                                                .foregroundColor(Color.globalButtonSecondColor)
                                                .font(.system(size: 14))
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                                        
                                        HStack {
                                            Text("This is latest message.")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 18))
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 170, height: 150)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 155, alignment: .bottomLeading)
                            }
                        }
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
struct ChatsView_Previes: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
#endif
