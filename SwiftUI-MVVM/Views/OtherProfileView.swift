//
//   OtherProfileView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/19/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

extension Color {
    static let flagDialogBackColor = Color("FlagBtnBackgroundColor")
    static let flagBackColor = Color("FlagBackgroundColor")
    static let blockBackColor = Color("BlockBackgroundColor")
}

struct OtherProfileView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var gradient = [Color.black.opacity(0.9), Color.black.opacity(0), Color.black.opacity(0), Color.black.opacity(0)]
    @State private var selectionProfileView: Int? = nil
    @State private var selectionProfileGalleryView: Int? = nil
    @State private var showDialogLocalExpertise = false
    @State private var showCompatibility = false
    @State private var flagAction = false
    @State private var blockAction = false
    
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
    //                            NavigationLink(destination: ProfileView(), tag: 1, selection: $selectionProfileView) {
                            Button(action: {
    //                                    self.selectionProfileView = 1?
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                FontIcon
                                    .text(.materialIcon(code: .arrow_back), fontsize: 33)
                                    .foregroundColor(Color.white.opacity(0.4))
                            }
    //                            }
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
                    .padding(.top, -120)
                    .zIndex(2)

                    VStack() {
                        HStack(spacing: 20) {
                            ZStack {
                                Image("ProfileUserDefaultPhoto")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: 150, maxHeight: 150)
                            }

                            VStack(spacing: 10.0) {
                                Text("First")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)

                                Text("XX Gender")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)
                                
                                Text("City Name")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)
                                
                                HStack() {
                                    FontIcon
                                        .text(.materialIcon(code: .message), fontsize: 30)
                                        .foregroundColor(Color.white)
                                }
                                .frame(width: UIScreen.main.bounds.width / 2 - 10, alignment: .leading)
                                .padding(.top, 5)
                            }
                            .frame(width: UIScreen.main.bounds.width / 2 - 20, alignment: .leading)
                            .padding(.bottom, -50)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        
                        VStack() {
                            HStack() {
                                Text("Your compatibility!")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 28))
                                
                                Button(action: {
                                    self.showCompatibility = true
                                }) {
                                    Image("Info")
                                }
                                .padding(.leading, 30)
                            }
                            
                            HStack() {
                                Image("Compatibility")
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 50)
                        
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
                        .padding(.top, 70)
                        
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
                                NavigationLink(destination: ProfileImageGalleryView(galleryType: "other"), tag: 5, selection: $selectionProfileGalleryView) {
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
                                        .scaledToFill()
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
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            
                            HStack() {
                                Text("No information to show")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 5)
                            
                            VStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, height: 70)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 20)
                        
                        Group {
                            VStack(spacing: 5.0) {
                                HStack() {
                                    Text("Home Location")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No city to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No state to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No country to show")
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
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No university to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No major to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No graduation year to show")
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
                                    Text("Work")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No job title to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No industry to show")
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
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No primary language to show")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                HStack() {
                                    Text("No other languge to show")
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
                                HStack() {
                                    Text("Hobbies & Organizations")
                                        .font(.system(size: 20))
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
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
                                VStack(spacing: 5.0) {
                                    HStack() {
                                        Text("Country count")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.medium)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                    
                                    HStack() {
                                        Text("No country count to show")
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
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                    
                                    HStack() {
                                        Text("No country to show")
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
                                
                                VStack(spacing: 10.0) {
                                    HStack() {
                                        Text("Local Expertise")
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.bold)
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            print("Local Printed !")
                                            self.showDialogLocalExpertise = true
                                        }) {
                                            Image("Info")
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                    
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
                                        Text("No activity to show.")
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
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                                .padding(.top, 80)
                                
                                HStack() {
                                    Button(action: {
                                        self.flagAction = true
                                    }) {
                                        HStack() {
                                            Image("OtherProfileFlag")
                                            Text("FLAG")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20))
                                                .fontWeight(.medium)
                                        }
                                        .frame(width: (UIScreen.main.bounds.width - 60)/2, height: 50)
                                        .background(Color.flagBackColor)
                                        .cornerRadius(100)
                                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 3)))
                                    }

                                    Button(action: {
                                        self.blockAction = true
                                    }) {
                                        HStack() {
                                            Image("OtherProfileBlock")
                                            Text("BLOCK")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20))
                                                .fontWeight(.medium)
                                        }
                                        .frame(width: (UIScreen.main.bounds.width - 60)/2, height: 50)
                                        .background(Color.blockBackColor)
                                        .cornerRadius(100)
                                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 3)))
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top, 30)
                                .padding(.bottom, 30)
                                
                                HStack() {
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                                .background(Color.hDividerColor)
                                .cornerRadius(100)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 50)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, -60)
                    
                    HStack() {
                        FontIcon
                            .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                            .foregroundColor(Color.white.opacity(0.4))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                    .padding(.top, 20)
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 80, trailing: 30))
            }
            .frame(alignment: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .customDialog(isShowing: $showDialogLocalExpertise) { // HERE
            VStack() {
                Text("What's this?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Text("Only SWiiFT locals will have this section filled with activities they would like to share with a traveler.")
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
            .frame(width: UIScreen.main.bounds.width - 70, height: 500, alignment: .top)
            .padding(EdgeInsets(top: 50, leading: 10, bottom: 70, trailing: 10))
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .customDialog(isShowing: $showCompatibility) { // HERE
            VStack() {
                Text("What's this?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                HStack() {
                    Text("The SWiiFT compatibility algorithm was designed to predict your compatibility with other users. The higher your compatibility score, the more likely you are to hit it off with this person!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width - 150)
                
                Spacer()
                
                Button(action: {
                    self.showCompatibility = false
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
            .frame(width: UIScreen.main.bounds.width - 70, height: 500, alignment: .top)
            .padding(EdgeInsets(top: 50, leading: 10, bottom: 50, trailing: 10))
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .customDialog(isShowing: $flagAction) { // HERE
            VStack() {
                HStack() {
                    Button(action: {
                        self.flagAction = false
                    }) {
                        HStack() {
                            FontIcon
                                .text(.materialIcon(code: .close), fontsize: 22)
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 40, height: 40)
                        .background(Color.globalButtonSecondColor)
                        .cornerRadius(100)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 130, alignment: .trailing)
                
                Text("Flag User?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Text("Flag this user for inappropriate content or messaging. The SWiiFT team will take any necessary action regaring violations of our Terms of Use.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width - 150)
                
                Spacer()
                
                Button(action: {
                    self.flagAction = false
                }) {
                    Text("FLAG")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                .background(Color.flagDialogBackColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 30)
                
                Button(action: {
                    self.flagAction = false
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
                .background(Color.tabBackColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 10)
            }
            .frame(width: UIScreen.main.bounds.width - 70, height: 500, alignment: .top)
            .padding(EdgeInsets(top: 20, leading: 10, bottom: 50, trailing: 10))
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .customDialog(isShowing: $blockAction) { // HERE
            VStack() {
                HStack() {
                    Button(action: {
                        self.blockAction = false
                    }) {
                        HStack() {
                            FontIcon
                                .text(.materialIcon(code: .close), fontsize: 22)
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 40, height: 40)
                        .background(Color.globalButtonSecondColor)
                        .cornerRadius(100)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 130, alignment: .trailing)
                
                Text("Block User?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Text("This user will no longer be able to view our profile or send messages to you. You will not be able to view this user's profile or send messages to this user.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                }
                .frame(width: UIScreen.main.bounds.width - 150)
                
                Spacer()
                
                Button(action: {
                    self.blockAction = false
                }) {
                    Text("BLOCK")
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
                
                Button(action: {
                    self.blockAction = false
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
                .background(Color.tabBackColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 150)
                .padding(.top, 10)
            }
            .frame(width: UIScreen.main.bounds.width - 70, height: 550, alignment: .top)
            .padding(EdgeInsets(top: 20, leading: 10, bottom: 50, trailing: 10))
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .background(Color.tabBackColor)
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct OtherProfileView_Previews: PreviewProvider {
    static var previews: some View {
        OtherProfileView()
    }
}
#endif
