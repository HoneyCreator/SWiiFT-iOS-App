//
//  ProfileSetupFinalView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/19/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileSetupFinalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionPushNotification: Int? = nil
    @State private var selectionContentView: Int? = nil
    
    var body: some View {
        ZStack() {
            VStack {
                Image("ProfileSetupFinalScreen")
                    .resizable()
                    .scaledToFill()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            ScrollView {
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
                
                VStack {
                    HStack() {
                        Text("Congratulations!")
                            .foregroundColor(Color.white)
                            .font(.system(size: 38))
                            .fontWeight(.medium)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    
                    HStack() {
                        Text("You're in.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 38))
                            .fontWeight(.medium)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 200, alignment: .topLeading)
                
                VStack() {
                    NavigationLink(destination: ContentView(), tag: 2, selection: $selectionContentView) {
                        Button(action: {
                            print("Let's go !!!")
                            self.selectionContentView = 2
                        }) {
                            Text("LET'S GO!")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .font(.system(size: 22))
                                .foregroundColor(Color.white)

                        }
                        .padding(.vertical, 15)
                        .background(Color.black.opacity(0.3)) // If you have this
                        .cornerRadius(40)
                        .frame(maxWidth: UIScreen.main.bounds.size.width / 2 - 20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 3)
                        )
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
        }
        .edgesIgnoringSafeArea(.all)
        .frame(alignment: .top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct ProfileSetupFinalView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSetupFinalView()
    }
}
#endif
