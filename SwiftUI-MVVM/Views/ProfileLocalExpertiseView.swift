//
//  ProfileLocalExpertiseView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileLocalExpertiseView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State var showImagePicker: Bool = false
    @State private var image: Image? = nil
    @State private var uiImage: UIImage? = nil
    @State private var activityTitle: String = ""
    @State private var activityDescription: String = ""
    @State private var activityDescInput = false
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .center) {
                    VStack(alignment: .center, spacing: 0.0) {
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
                            Text("Local Expertise")
                                .foregroundColor(Color.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack() {
                        Text("Describe a typical activity a traveler can do with you." + "\n" + "Where will you go? What will you do?")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding(.top, 30)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    VStack() {
                        Text("Pictures can take a few seconds to load in the beta, please be patient.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .padding(.top, 70)
                    }
                    .frame(width: UIScreen.main.bounds.width - 90, alignment: .leading)
                    
                    HStack() {
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 5)
                    .background(Color.hDividerColor)
                    .padding(.top, 20)
                    
                    Button(action: {
                        self.showImagePicker = true
                        let a = FileUploadManager()
                        a.uploadRequest(urlPath: "http://192.168.0.104/upImage/my_upload.php", imageData: [self.uiImage?.jpegData(compressionQuality: 1.0)], imageDataFieldName: ["upfile"], formFields: ["title":"jdfa"])
                    }) {
                        if !self.showImagePicker && self.image == nil {
                            VStack() {
                                Image("FileUploadIcon")
                                
                                Text("Upload Photo")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .tracking(2)
                            }
                        }
                        
                        if self.image != nil {
                            image?.resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 70, height: 200)
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, style: StrokeStyle( lineWidth: 1, dash: [2]))
                    )
                    .padding(.top, 50)
                    .sheet(isPresented: $showImagePicker) {
                        ImagePicker(sourceType: .photoLibrary) { mUiImage in
                            print("Path \(mUiImage)")
                            self.uiImage = mUiImage
                            self.image = Image(uiImage: mUiImage)
                            self.showImagePicker = true
                        }
                    }
                    
                    ZStack(alignment: .leading) {
                        if activityTitle.isEmpty {
                            Text("Activity Title")
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                        }
                        TextField("", text: $activityTitle)
                            .foregroundColor(Color.white)
                            .autocapitalization(.none)
                            .font(.system(size: 24))
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width - 60)
                    .padding()
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.15), lineWidth: 1)
                    )
                    .padding(.top, 20)
                    
                    VStack() {
                        if activityDescription.isEmpty && !activityDescInput {
                            Button(action: {
                                self.activityDescInput = true
                            }) {
                                Text("Activity Description")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                            }
                        } else {
                            if #available(iOS 14.0, *) {
                                TextEditor(text: $activityDescription)
                                    .padding()
                                    .autocapitalization(.none)
                                    .font(.system(size: 24))
                                    .frame(width: UIScreen.main.bounds.width - 30, height: 170)
                                    .background(Color.white.opacity(0.15))
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, height: 170, alignment: .topLeading)
                    .background(Color.white.opacity(0.15))
                    .cornerRadius(10)
                    .padding(.top, 20)
                    
                    HStack() {
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 5)
                    .background(Color.hDividerColor)
                    .padding(.top, 40)
                    
//                    VStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .padding(.top, 70)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 70, alignment: .leading)
                    
                    HStack() {
//                        NavigationLink(destination: ProfileView(), tag: 1, selection: $selectionProfileView ){
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
                            .padding(.vertical, 10)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 30, alignment: .bottomTrailing)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
//                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .trailing)
                    .padding(.top, 40)
                    .padding(.bottom, 60)
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
struct ProfileLocalExpertiseView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLocalExpertiseView()
    }
}
#endif
