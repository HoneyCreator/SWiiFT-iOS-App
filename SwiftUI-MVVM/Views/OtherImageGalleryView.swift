//
//  OtherImageGalleryView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct OtherImageGalleryView: View {
    @State private var selectionProfileView: Int? = nil
    @State private var selectionGalleryPicUploadView: Int? = nil
    @State var showImagePicker: Bool = false
    @State private var image: Image? = nil
    @State private var uiImage: UIImage? = nil
    
    var galleryType = ""
    
    var buttonOpacity: Double {
        return self.image != nil ? 1 : 0.5
    }
    
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
                            HStack {
                                Text("Image Gallery")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 28))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .top)
                            .background(Color.black)
                            .padding(.top, -20)
                        }
                        
                        VStack() {
                            Text("Upload pictures of yourself on your travels, in your hometown, or just doing what you like to do!")
                                .foregroundColor(Color.white)
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .padding(.top, 40)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        
                        VStack() {
                            
                            HStack() {
                                Image("GalleryDefaultPhoto")
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                            .padding(.top, 50)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top, 50)
                        
                        VStack() {
//                            if self.galleryType == "owner" {
                                HStack() {
                                    Spacer()
                                    
                                    NavigationLink(destination: GalleryPicUploadView(uploadCount: "1"), tag: 2, selection: $selectionGalleryPicUploadView) {
                                        Button(action: {
                                            self.selectionGalleryPicUploadView = 2
                                        }) {
                                            HStack() {
                                                Text("Edit")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white.opacity(0.4))
                                                    .fontWeight(.medium)
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
//                            }
                            
                            HStack() {
                                Image("GalleryDefaultPhoto")
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                            .padding(.top, 50)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top, 100)
                        
                        VStack() {
//                            if self.galleryType == "owner" {
                                HStack() {
                                    Spacer()
                                    
                                    NavigationLink(destination: GalleryPicUploadView(uploadCount: "1"), tag: 2, selection: $selectionGalleryPicUploadView) {
                                        Button(action: {
                                            self.selectionGalleryPicUploadView = 2
                                        }) {
                                            HStack() {
                                                Text("Edit")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white.opacity(0.4))
                                                    .fontWeight(.medium)
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
//                            }
                            
                            HStack() {
                                Image("GalleryDefaultPhoto")
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                            .padding(.top, 50)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top, 100)
                    }
                    .padding(.bottom, 200)
                }
                .padding(EdgeInsets(top: 35, leading: 30, bottom: 35, trailing: 30))
                .background(NavigationConfigurator { navigationConfigurator in
                    navigationConfigurator.hidesBarsOnSwipe = true
                })
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height, alignment: .top)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(sourceType: .photoLibrary) { mUiImage in
                print("Path \(mUiImage)")
                self.uiImage = mUiImage
                self.image = Image(uiImage: mUiImage)
                self.showImagePicker = true
            }
        }
    }
}

#if DEBUG
struct OtherImageGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        OtherImageGalleryView()
    }
}
#endif
