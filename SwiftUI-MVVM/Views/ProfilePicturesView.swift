//
//  ProfilePicturesView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

extension Color {
    static let posterOwnerColor = Color("PosterOwnerBackColor")
}

struct ProfilePicturesView: View {
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
                        }
                        
                        HStack {
                            VStack() {
                            }
                            .frame(width: 50, height: 50)
                            .background(Color.posterOwnerColor)
                            .cornerRadius(300)
                            .padding(.trailing, 10)
                            
                            Text("Name of poster")
                                .foregroundColor(Color.white)
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 30)
                        
                        HStack {
                            Image("GalleryDefaultPhoto")
                                .resizable()
                                .scaledToFit()
                        }
                        .frame(width: UIScreen.main.bounds.width, height: 400)
                        .background(Color.posterOwnerColor)
                        .padding(.top, 50)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 30))
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
struct ProfilePicturesView_Preview: PreviewProvider {
    static var previews: some View {
        ProfilePicturesView()
    }
}
#endif
