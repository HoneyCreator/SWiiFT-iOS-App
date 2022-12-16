//
//  EditCoverPhotoView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct EditCoverPhotoView: View {
    @State var selectionProfileView: Int? = nil
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.backgroundColor = .clear
        navBarAppearance.barTintColor = .clear
        navBarAppearance.tintColor = .black
        navBarAppearance.setBackgroundImage(UIImage(), for: .default)
        navBarAppearance.shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
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
                            Text("Edit Cover Photo")
                                .foregroundColor(Color.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack() {
                        Image("FileUploadIcon")
                        
                        Text("Upload")
                            .font(.system(size: 28))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                            .tracking(5)
                        
                        Text("Photo")
                            .font(.system(size: 28))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                            .tracking(5)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .background(Color.white.opacity(0.1))
                    .padding(.top, 80)
                    
                    VStack() {
                        Button(action: {
                            print("SUBMIT for Profile Picture Setup")
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
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height / 2 - 100, alignment: .bottom)
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 35, trailing: 30))
                .background(NavigationConfigurator { navigationConfigurator in
                    navigationConfigurator.hidesBarsOnSwipe = true
                })
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height, alignment: .top)
            .background(Color.tabBackColor)
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct EditCoverPhotoView_Preview: PreviewProvider {
    static var previews: some View {
        EditCoverPhotoView()
    }
}
#endif
