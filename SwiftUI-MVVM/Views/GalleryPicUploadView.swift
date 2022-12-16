//
//  GalleryPicUploadView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct GalleryPicUploadView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileImageGalleryView: Int? = nil
    @State var showImagePicker: Bool = false
    @State private var image: Image? = nil
    @State private var uiImage: UIImage? = nil
    var uploadCount: String = "1"
    var buttonOpacity: Double {
        return self.image != nil ? 1 : 0.5
    }
    init(uploadCount: String) {
        self.uploadCount = uploadCount
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
                            Text("Image " + String(self.uploadCount) +  " Upload")
                                .foregroundColor(Color.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    Button(action: {
                        self.showImagePicker = true
                        let a = FileUploadManager()
                        a.uploadRequest(urlPath: "http://192.168.0.104/upImage/my_upload.php", imageData: [self.uiImage?.jpegData(compressionQuality: 1.0)], imageDataFieldName: ["upfile"], formFields: ["title":"jdfa"])
                    }) {
                        if !self.showImagePicker && self.image == nil {
                            VStack() {
                                Image("FileUploadIcon")
                                
                                Text("Upload")
                                    .font(.system(size: 35))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .tracking(5)
                                
                                Text("Photo")
                                    .font(.system(size: 35))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .tracking(5)
                            }
                        }
                        
                        if self.image != nil {
                            image?.resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(width: 230, height: 230)
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, style: StrokeStyle( lineWidth: 2, dash: [5]))
                    )
                    .padding(.top, 100)
                    .sheet(isPresented: $showImagePicker) {
                        ImagePicker(sourceType: .photoLibrary) { mUiImage in
                            print("Path \(mUiImage)")
                            self.uiImage = mUiImage
                            self.image = Image(uiImage: mUiImage)
                            self.showImagePicker = true
                        }
                    }
                    
//                    VStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .padding(.top, 70)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    HStack() {
//                        NavigationLink(destination: ProfileImageGalleryView(galleryType: "owner"), tag: 1, selection: $selectionProfileImageGalleryView) {
                        Button(action: {
                            print("SUBMIT for Profile Picture Setup")
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("SAVE")
                                .fontWeight(.medium)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .font(.system(size: 22))
                                .foregroundColor(Color.white)
                                
                        }
                        .padding(.vertical, 15)
                        .background(Color.globalButtonSecondColor) // If you have this
                        .cornerRadius(40)
                        .frame(maxWidth: UIScreen.main.bounds.size.width - 50, alignment: .bottomTrailing)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 3)
                        )
                        .opacity(buttonOpacity)
                        .disabled(self.image == nil)
//                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                    .padding(.top, 150)
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
struct GalleryPicUploadView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryPicUploadView(uploadCount: "1")
    }
}
#endif
