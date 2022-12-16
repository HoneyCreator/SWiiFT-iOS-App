//
//  ProfileImageGalleryView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileImageGalleryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var selectionGalleryPicUploadView: Int? = nil
    @State private var image: Image? = nil
    @State private var uiImage: UIImage? = nil
    var galleryType = ""
    var buttonOpacity: Double {
        return self.image != nil ? 1 : 0.5
    }
    init(galleryType: String) {
        self.galleryType = galleryType
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
                            Text("Image Gallery")
                                .foregroundColor(Color.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack() {
                        Text("Upload pictures of yourself on your travels, in your hometown, or just doing what you like to do!")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .padding(.top, 30)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    VStack() {
                        if self.galleryType == "owner" {
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
                        }
                        
                        HStack() {
                            Image("GalleryDefaultPhoto")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                        .padding(.top, 50)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top, 20)
                    
                    VStack() {
                        if self.galleryType == "owner" {
                            HStack() {
                                Spacer()
                                
                                NavigationLink(destination: GalleryPicUploadView(uploadCount: "2"), tag: 2, selection: $selectionGalleryPicUploadView) {
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
                        }
                        
                        HStack() {
                            Image("GalleryDefaultPhoto")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                        .padding(.top, 50)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top, 90)
                    
                    VStack() {
                        if self.galleryType == "owner" {
                            HStack() {
                                Spacer()
                                
                                NavigationLink(destination: GalleryPicUploadView(uploadCount: "3"), tag: 2, selection: $selectionGalleryPicUploadView) {
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
                        }
                        
                        HStack() {
                            Image("GalleryDefaultPhoto")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                        .padding(.top, 50)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top, 90)
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 235, trailing: 30))
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
struct ProfileImageGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageGalleryView(galleryType: "owner")
    }
}
#endif
