//
//  ProfilePicSetupView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfilePicSetupView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileMeeting: Int? = nil
    @State private var showImagePickerOnSetup: Bool = false
    @State private var imageOnSetup: Image? = nil
    @State private var uiImageOnSetup: UIImage? = nil
    
    var buttonOpacity: Double {
        return self.imageOnSetup != nil ? 1 : 0.5
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
                        HStack {
                            Text("Give your best" + "\n" + "smile!")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 38))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                        .padding(.leading, 0)
                    }
                    
                    HStack() {
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.globalButtonColor)
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.globalButtonColor)
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.globalButtonColor)
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    }
                    
                    VStack() {
                        Text("Upload your profile picture.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding(.top, 40)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    VStack() {
                        Text("You can change this anytime!")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .padding(.top, 20)
                    } 
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    Button(action: {
                        self.showImagePickerOnSetup = true
                        let a = FileUploadManager()
                        a.uploadRequest(urlPath: "http://192.168.0.104/upImage/my_upload.php", imageData: [self.uiImageOnSetup?.jpegData(compressionQuality: 1.0)], imageDataFieldName: ["upfile"], formFields: ["title":"jdfa"])
                    }) {
                        if !self.showImagePickerOnSetup && self.imageOnSetup == nil {
                            VStack() {
                                Image("FileUploadIcon")
                                
                                Text("Upload")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .tracking(5)
                                
                                Text("Photo")
                                    .font(.system(size: 40))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .tracking(5)
                            }
                        }
                        
                        if self.imageOnSetup != nil {
                            self.imageOnSetup?.resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(width: 300, height: 300)
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 200)
                            .stroke(Color.white, style: StrokeStyle( lineWidth: 1, dash: [2]))
                    )
                    .padding(.top, 40)
                    .sheet(isPresented: $showImagePickerOnSetup, onDismiss: {
                        self.showImagePickerOnSetup = false
                    }) {
                        ImagePicker(sourceType: .photoLibrary) { mUiImage in
                            print("Path \(mUiImage)")
                            self.uiImageOnSetup = mUiImage
                            self.imageOnSetup = Image(uiImage: mUiImage)
                            self.showImagePickerOnSetup = false
                        }
                    }
                    
//                    VStack() {
//                        Text("Pictures can take a few seconds to load in the beta, please be patient")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .padding(.top, 40)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    HStack() {
//                        NavigationLink(destination: ProfileMeetingSetupView(), tag: 2, selection: $selectionProfileMeeting) {
//                            Button(action: {
//                                self.selectionProfileMeeting = 2
//                            }) {
//                                Text("Skip")
//                                    .fontWeight(.medium)
//                                    .font(.system(size: 22))
//                                    .foregroundColor(Color.skipButtonColor)
//                            }
//                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileMeetingSetupView(), tag: 2, selection: $selectionProfileMeeting) {
                            Button(action: {
                                print("SUBMIT for Profile Picture Setup")
                                if buttonOpacity == 1.0 {
                                    self.selectionProfileMeeting = 2
                                }
                            }) {
                                Text("NEXT")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)
                            }
                            .padding(.vertical, 15)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width / 2 - 20, alignment: .bottomTrailing)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(buttonOpacity)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                    .padding(.top, 60)
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
struct ProfilePicSetupView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicSetupView()
    }
}
#endif
