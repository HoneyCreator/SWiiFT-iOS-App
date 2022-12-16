//
//   ProfileView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/19/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileView: View {
    @State private var gradient = [Color.black.opacity(0.9), Color.black.opacity(0), Color.black.opacity(0), Color.black.opacity(0)]
    @State private var introduction: String = ""
    @State private var introduceSelf = false
    @State private var showDialogLocalExpertise = false
    @State private var showDialogLogout = false
    @State private var selectionCoverPhotoEdit: Int? = nil
    @State private var selectionProfileAboutMe: Int? = nil
    @State private var selectionProfilePictureSetupView: Int? = nil
    @State private var selectionProfileGalleryView: Int? = nil
    @State private var selectionLocalExpertiseView: Int? = nil
    @State private var selectionUniversityView: Int? = nil
    @State private var selectionOccupationView: Int? = nil
    @State private var selectionProfileLanguageView: Int? = nil
    @State private var selectionProfileCountryCount: Int? = nil
    @State private var selectionFavoriteCountry: Int? = nil
    @State private var selectionCountryOrigin: Int? = nil
    @State private var selectionAccountSetting: Int? = nil
    @State private var selectionProfileContactUs: Int? = nil
    @State private var selectionProfileHobbies: Int? = nil
    @State private var selectionPrivacy: Int? = nil
    @State private var selectionTerms: Int? = nil
    @State private var selectionFAQ: Int? = nil
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack(spacing: 0.0) {
                    ZStack {
                        VStack {
                            Image("ProfileDefaultCoverPhoto")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: UIScreen.main.bounds.width, height: 170)
                        
                        VStack {
                            LinearGradient(colors: gradient, startPoint: .bottom, endPoint: .top)
                                .frame(height: 250)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: 170)
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    
                    HStack {
                        NavigationLink(destination: ProfileSetupCoverPhotoView(), tag: 2, selection: $selectionCoverPhotoEdit) {
                            Button(action: {
                                self.selectionCoverPhotoEdit = 2
                            }) {
                                Image("CameraIcon")
                            }
                            .frame(width: 50, height: 50)
                            .background(Color.cameraBackColor.opacity(0.7))
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50).stroke(Color.black, lineWidth: 1)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, alignment: .trailing)
                    .padding(.top, -30)
                    .zIndex(1)

                    VStack() {
                        HStack(spacing: 20) {
                            ZStack {
                                Image("ProfileUserDefaultPhoto")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: 150, maxHeight: 150)
                                
                                NavigationLink(destination: ProfileSetupPictureView(), tag: 4, selection: $selectionProfilePictureSetupView) {
                                    Button(action: {
                                        self.selectionProfilePictureSetupView = 4
                                    }) {
                                        HStack {
                                            Image("CameraIcon")
                                        }
                                        .frame(width: 40, height: 40)
                                        .background(Color.cameraBackColor)
                                        .cornerRadius(50)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 50).stroke(Color.black, lineWidth: 1)
                                        )
                                        .padding(EdgeInsets(top: 110, leading: 95, bottom: 0, trailing: 0))
                                    }
                                }
                                .zIndex(1)
                            }

                            VStack() {
                                Text("First")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)

                                Text("XX Gender")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .padding(.top, 2)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)

                                HStack() {
                                    FontIcon
                                        .text(.awesome5Solid(code: .edit), fontsize: 24)
                                        .foregroundColor(Color.white.opacity(0.4))
                                    Text("City Name")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                }
                                .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)
                                .padding(.top, 2)
                            }
                            .frame(width: UIScreen.main.bounds.width / 2 - 20, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        
                        HStack() {
                            VStack(spacing: 15.0) {
                                Image("CTRPhoto")
                                Text("CTR")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.medium)
                            }
                            
                            VStack() {
                            }
                            .frame(width: 5, height: 90)
                            .cornerRadius(10)
                            .background(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            
                            VStack(spacing: 9.0) {
                                Text("0")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                
                                Text("Meet ups")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                            }
                            
                            VStack() {
                            }
                            .frame(width: 5, height: 90)
                            .cornerRadius(10)
                            .background(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            
                            VStack(spacing: 15.0) {
                                HStack {
                                    Text("1")
                                        .font(.system(size: 32))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                }
                                .frame(width: 50, height: 50)
                                .background(Color.levelBackColor)
                                .cornerRadius(50)
                                
                                Text("Level")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 90)
                        .padding(.top, 30)
                        
                        HStack() {
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                        .background(Color.globalButtonSecondColor)
                        .cornerRadius(100)
                        .padding(.top, 20)
                        
                        VStack() {
                            HStack() {
                                Text("Image Gallery")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                NavigationLink(destination: ProfileImageGalleryView(galleryType: "owner"), tag: 5, selection: $selectionProfileGalleryView) {
                                    Button(action: {
                                        self.selectionProfileGalleryView = 5
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
                            
                            HStack() {
                                Text("Show your best travel pics!")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 5)
                            
                            HStack(spacing: 10.0) {
                                HStack() {
                                    Image("GalleryDefaultPhoto")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: UIScreen.main.bounds.width / 3 - 30, height: UIScreen.main.bounds.width / 3 - 30)
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10).stroke(Color.white, style: StrokeStyle(lineWidth: 1, dash: [3]))
                                )
                                
                                VStack() {
                                    Image("GalleryDefaultPhoto")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: UIScreen.main.bounds.width / 3 - 30, height: UIScreen.main.bounds.width / 3 - 30)
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, style: StrokeStyle(lineWidth: 1, dash: [3]))
                                )
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                
                                
                                VStack() {
                                    Image("GalleryDefaultPhoto")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: UIScreen.main.bounds.width / 3 - 30, height: UIScreen.main.bounds.width / 3 - 30)
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, style: StrokeStyle(lineWidth: 1, dash: [3]))
                                )
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                        .padding(.top, 20)
                        
                        HStack() {
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                        .background(Color.globalButtonSecondColor)
                        .cornerRadius(100)
                        .padding(.top, 20)
                        
                        HStack() {
                            
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, height: 130)
                        .padding(.top, 20)
                        
                        VStack() {
                            HStack() {
                                Text("About Me")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                NavigationLink(destination: ProfileAboutMeView(), tag: 3, selection: $selectionProfileAboutMe) {
                                    Button(action: {
                                        self.selectionProfileAboutMe = 3
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
                            
                            HStack() {
                                Text("What would you like to do with people you meet?")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 5)
                            
                            VStack() {
                                if introduction.isEmpty && !introduceSelf {
                                    Button(action: {
                                        self.introduceSelf = true
                                    }) {
                                        Text("e.g. grab drinks / share a meal / go out tonight / play sports / explore the city / visit a museum...")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white)
                                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                                        .multilineTextAlignment(.leading)
                                    }
                                } else {
                                    if #available(iOS 14.0, *) {
                                        TextEditor(text: $introduction)
                                            .padding()
                                            .autocapitalization(.none)
                                            .frame(width: UIScreen.main.bounds.width - 50, height: 200)
                                            .background(Color.white.opacity(0.15))
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 200, alignment: .topLeading)
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, style: StrokeStyle(lineWidth: 1))
                            )
                            .padding(.top, 10)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 20)
                        
                        Group {
                            VStack(spacing: 2.0) {
                                HStack() {
                                    Text("Country of origin")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: ProfileHomeLocationView(), tag: 12, selection: $selectionCountryOrigin) {
                                        Button(action: {
                                            self.selectionCountryOrigin = 12
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
                                
                                HStack() {
                                    Text("City")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("State")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("Country")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 10)
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                            .padding(.top, 10)
                        }
                        
                        Group {
                            VStack(spacing: 5.0) {
                                HStack() {
                                    Text("Education")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: ProfileEducationUniversityView(), tag: 7, selection: $selectionUniversityView) {
                                        Button(action: {
                                            self.selectionUniversityView = 7
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
                                
                                HStack() {
                                    Text("University")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("Major")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("XXXX Degree")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 10)
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                        }
                        
                        Group {
                            VStack(spacing: 5.0) {
                                HStack() {
                                    Text("Work")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: ProfileOccupationView(), tag: 8, selection: $selectionOccupationView) {
                                        Button(action: {
                                            self.selectionOccupationView = 8
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
                                
                                HStack() {
                                    Text("Job Title")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("Industry")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 10)
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                            
                            VStack(spacing: 5.0) {
                                HStack() {
                                    Text("Language")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: ProfileLanguagesView(), tag: 9, selection: $selectionProfileLanguageView) {
                                        Button(action: {
                                            self.selectionProfileLanguageView = 9
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
                                
                                HStack() {
                                    Text("Primary Language")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("Languages")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 10)
                                
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.globalButtonSecondColor)
                            .cornerRadius(100)
                            
                            VStack(spacing: 5.0) {
                                NavigationLink(destination: ProfileHobbiesView(), tag: 15, selection: $selectionProfileHobbies) {
                                    Button(action: {
                                        self.selectionProfileHobbies = 15
                                    }) {
                                        HStack() {
                                            Text("Hobbies & Organizations")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.white)
                                                .fontWeight(.bold)
                                            
                                            Spacer()
                                            
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
                                        .frame(width: UIScreen.main.bounds.width - 50)
                                    }
                                }
                                
                                HStack() {
                                    Text("Tell us what you love to do!")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top, 30)
                            
                            HStack() {
                                Button(action: {
                                    
                                }) {
                                    HStack() {
                                        Text("hobby")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.medium)
                                    }
                                    .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 50)
                                    .background(Color.hobbyBackColor)
                                    .cornerRadius(100)
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 20)
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                            .background(Color.globalButtonSecondColor)
                            .cornerRadius(100)
                            .padding(.top, 100)
                            
                            VStack(spacing: 10) {
                                Text("Travel")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                Text("A few-country specifics.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        Text("Country count")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.medium)
                                        
                                        Spacer()
                                        
                                        NavigationLink(destination: ProfileCountryCountView(), tag: 10, selection: $selectionProfileCountryCount) {
                                            Button(action: {
                                                self.selectionProfileCountryCount = 10
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
                                    
                                    HStack() {
                                        Text("Country count")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .fontWeight(.medium)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 10)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        Text("Favorite country traveled")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.medium)
                                        
                                        Spacer()
                                        
                                        NavigationLink(destination: ProfileFavoriteCountryView(), tag: 11, selection: $selectionFavoriteCountry) {
                                            Button(action: {
                                                self.selectionFavoriteCountry = 11
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
                                    
                                    HStack() {
                                        Text("Country")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .fontWeight(.medium)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 10)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        HStack() {
                                            Text("Local Expertise")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.white)
                                                .fontWeight(.bold)
                                            
                                            Button(action: {
                                                print("Local Printed !")
                                                self.showDialogLocalExpertise = true
                                            }) {
                                                Image("Info")
                                            }
                                        }
                                        .frame(width: UIScreen.main.bounds.width / 2 + 30, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        NavigationLink(destination: ProfileLocalExpertiseView(), tag: 6, selection: $selectionLocalExpertiseView) {
                                            Button(action: {
                                                self.selectionLocalExpertiseView = 6
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
                                    
                                    HStack() {
                                        Image("DefaultLocalExpertise")
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 30)
                                
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        HStack() {
                                            Text("Activity")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.white)
                                                .fontWeight(.medium)
                                        }
                                        .frame(width: UIScreen.main.bounds.width / 2 + 30, alignment: .leading)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                    
                                    HStack() {
                                        Text("Describe your activity here.")
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 30)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.globalButtonSecondColor)
                                .cornerRadius(100)
                                .padding(.top, 80)
                                
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        HStack() {
                                            Text("Account")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.white)
                                                .fontWeight(.bold)
                                        }
                                        .frame(width: UIScreen.main.bounds.width / 2 + 30, alignment: .leading)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                    
                                    NavigationLink(destination: ProfileAccountSettingsView(), tag: 13, selection: $selectionAccountSetting) {
                                        Button(action: {
                                            self.selectionAccountSetting = 13
                                        }) {
                                            HStack() {
                                                Text("Account Settings")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                            .padding(.top, 10)
                                        }
                                    }
                                    
                                    HStack() {
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                    .background(Color.hDividerColor)
                                    .cornerRadius(100)
                                    .padding(.top, 10)
                                    
                                    NavigationLink(destination: ProfileFaqView(), tag: 16, selection: $selectionFAQ) {
                                        Button(action: {
                                            self.selectionFAQ = 16
                                        }) {
                                            HStack() {
                                                Text("FAQs")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                            .padding(.top, 10)
                                        }
                                    }
                                    
                                    HStack() {
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                    .background(Color.hDividerColor)
                                    .cornerRadius(100)
                                    .padding(.top, 10)
                                    
                                    NavigationLink(destination: TermsSplashView(), tag: 15, selection: $selectionTerms) {
                                        Button(action: {
                                            self.selectionTerms = 15
                                        }) {
                                            HStack() {
                                                Text("Terms of Use")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                            .padding(.top, 10)
                                        }
                                    }
                                    
                                    HStack() {
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                    .background(Color.hDividerColor)
                                    .cornerRadius(100)
                                    .padding(.top, 10)
                                    
                                    NavigationLink(destination: PrivacyView(), tag: 14, selection: $selectionPrivacy) {
                                        Button(action: {
                                            self.selectionPrivacy = 14
                                        }) {
                                            HStack() {
                                                Text("Privacy")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                            .padding(.top, 10)
                                        }
                                    }
                                    
                                    HStack() {
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                    .background(Color.hDividerColor)
                                    .cornerRadius(100)
                                    .padding(.top, 10)
                                    
                                    Group {
                                        NavigationLink(destination: ProfileContactUsView(), tag: 14, selection: $selectionProfileContactUs) {
                                            Button(action: {
                                                self.selectionProfileContactUs = 14
                                            }) {
                                                HStack() {
                                                    Text("Contact us")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(Color.white)
                                                        .fontWeight(.medium)
                                                    
                                                    Spacer()
                                                    
                                                    FontIcon
                                                        .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                        .foregroundColor(Color.white.opacity(0.4))
                                                }
                                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                                .padding(.top, 10)
                                            }
                                        }
                                        
                                        HStack() {
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                        .background(Color.hDividerColor)
                                        .cornerRadius(100)
                                        .padding(.top, 10)
                                        
                                        Button(action: {
                                            self.showDialogLogout = true
                                        }) {
                                            HStack() {
                                                Text("Log Out")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(Color.white)
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                                    .foregroundColor(Color.white.opacity(0.4))
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                            .padding(.top, 10)
                                        }
                                        
                                        HStack() {
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                        .background(Color.hDividerColor)
                                        .cornerRadius(100)
                                        .padding(.top, 10)
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 40)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 50)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, -60)
                }
                .padding(.bottom, 30)
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
        }
        .customDialog(isShowing: $showDialogLocalExpertise) { // HERE
            VStack() {
                Text("What's this?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Text("If you are a traveler, you can skip this section. Locals, list one activity you would like to share with a traveler.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width - 150)
                
                Spacer()
                
                Button(action: {
                    self.showDialogLocalExpertise = false
                }) {
                    Text("GOT IT!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                .background(Color.globalButtonSecondColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 30)
            }
            .padding(EdgeInsets(top: 50, leading: 10, bottom: 70, trailing: 10))
            .cornerRadius(20)
            .frame(width: UIScreen.main.bounds.width - 70, height: 500, alignment: .top)
            .background(Color.tabBackColor)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .customDialog(isShowing: $showDialogLogout) { // HERE
            VStack() {
                Text("Log out?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Text("Are you sure you want to log out?")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 160)
                
                Spacer()
                
                Button(action: {
                    self.showDialogLogout = false
                }) {
                    Text("LOG OUT")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                } // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 30)
                .background(Color.tabBackColor)
                
                Button(action: {
                    self.showDialogLogout = false
                }) {
                    Text("CANCEL")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                .background(Color.globalButtonSecondColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 10)
            }
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height, alignment: .top)
            .padding(EdgeInsets(top: 50, leading: 10, bottom: 50, trailing: 10))
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .frame(width: UIScreen.main.bounds.width - 100, height: 400, alignment: .top)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
            .frame(alignment: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .background(Color.tabBackColor)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
