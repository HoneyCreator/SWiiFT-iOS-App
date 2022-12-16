//
//  LocalsChatView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

extension Color {
    static let travelUserBackColor = Color("TravelerUserBackColor")
    static let travelBackColor = Color("TravelBackColor")
}

struct LocalsChatView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var localTravel: String = ""
    @State private var localTravelSearch = false
    @State private var showSuggestionDialog = false
    @State private var output: String = ""
    @State private var showCompatibilityDialog = false
    @State private var selectionOtherProfileView: Int? = nil
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
                VStack() {
                    VStack(spacing: 0.0) {
                        HStack {
                            Text("Suggested People")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                        HStack {
                            Button(action: {
                                self.showSuggestionDialog = true
                            }) {
                                Image("Info")
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                        .padding(.top, -33)
                    }
                    .padding(.top, 50)
                    
                    VStack() {
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .search), fontsize: 33)
                                .foregroundColor(Color.white.opacity(0.4))
                            if localTravel.isEmpty {
                                Text("Search \"local\" or \"traveler\"")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white)
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                            }
                            TextField("", text: $localTravel, onEditingChanged: {
                                self.localTravelSearch = $0 // true
                            }, onCommit: {
                                self.output = localTravel
                            })
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
//                                .keyboardType(.decimalPad)
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 70)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 30)
                    .zIndex(1)
                    
                    HStack() {
                        Text("This page refreshes with a new mix of profiles every 24h." + "\n" + "Message your favorite profiles while they still appear here!")
                            .foregroundColor(Color.white)
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 30)
                    
                    HStack() {
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 5)
                    .background(Color.hDividerColor)
                    .cornerRadius(100)
                    .padding(.top, 10)
                    
                    if self.localTravel == "travel(Skip)" {
                        Group {
                            NavigationLink(destination: OtherProfileView(), tag: 1, selection: $selectionOtherProfileView) {
                                Button(action: {
                                    self.selectionOtherProfileView = 1
                                }) {
                                    HStack() {
                                        
                                        VStack() {
                                            HStack() {
                                                HStack() {
                                                    Image("LocalUserDefaultAvatar")
                                                        .resizable()
                                                        .scaledToFill()
                                                }
                                                .frame(width: 100, height: 100)
                                                .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                                                
                                                HStack {
                                                    Image("LocalUserDefaultFlag")
                                                        .resizable()
                                                        .scaledToFill()
                                                }
                                                .frame(width: 40, height: 40)
                                                .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                                                .padding(.top, 60)
                                                .padding(.leading, -30)
                                            }
                                            .frame(width: 60, height: 60)
                                            .padding(.bottom, 30)
                                            
                                            VStack() {
                                                Text("Traveler")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 12))
                                                    .fontWeight(.bold)
                                            }
                                            .frame(width: 100, height: 25)
                                            .background(Color.travelUserBackColor)
                                            .cornerRadius(5)
                                        }
                                        .frame(width: 100)
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 10.0) {
                                            HStack {
                                                Text("First")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 20))
                                                    .fontWeight(.bold)
                                                
                                                Spacer()
                                                
                                                FontIcon
                                                    .text(.materialIcon(code: .message), fontsize: 26)
                                                    .foregroundColor(Color.white)
                                            }
                                            
                                            HStack {
                                                Text("XX")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 18))
                                                
                                                Spacer()
                                                
                                                Text("Nonbinary")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 18))
                                                
                                                Spacer()
                                                
                                                Text("XX")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 18))
                                                
                                                Spacer()
                                                
                                                Text("Km")
                                                    .foregroundColor(Color.white)
                                                    .font(.system(size: 18))
                                            }
                                            
                                            VStack() {
                                                HStack() {
                                                    Text("Your compatibility!")
                                                        .foregroundColor(Color.white)
                                                        .fontWeight(.bold)
                                                        .font(.system(size: 14.5))
                                                    
                                                    Spacer()
                                                    
                                                    Button(action: {
                                                        self.showCompatibilityDialog = true
                                                    }) {
                                                        Image("Info")
                                                    }
                                                    .padding(.leading, 30)
                                                }
                                                .frame(width: UIScreen.main.bounds.width - 190)
                                                
                                                HStack() {
                                                    Image("Compatibility")
                                                        .resizable()
                                                        .scaledToFit()
                                                }
                                                .frame(width: UIScreen.main.bounds.width - 190)
                                            }
                                            .frame(width: UIScreen.main.bounds.width - 190)
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 190, height: 150)
                                        .padding(.top, -15)
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 155, alignment: .bottomLeading)
                                .padding(.top, 10)
                            }
                            }
                            
                            HStack() {
                            }
                            .frame(width: UIScreen.main.bounds.width, height: 5)
                            .background(Color.hDividerColor)
                            .cornerRadius(100)
                        }
                    }
                    
                    if self.localTravelSearch == true {
                        NavigationLink(destination: OtherProfileView(), tag: 1, selection: $selectionOtherProfileView) {
                            Button(action: {
                                self.selectionOtherProfileView = 1
                            }) {
                                HStack {
                                    VStack {
                                        VStack() {
                                            HStack() {
                                                Image("TravelUserDefaultAvatar")
                                                    .resizable()
                                                    .scaledToFill()
                                            }.frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 260)
                                            
                                            HStack {
                                                VStack() {
                                                    Text("Local")
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 12))
                                                        .fontWeight(.bold)
                                                }
                                                .frame(width: 90, height: 25)
                                                .background(Color.travelBackColor)
                                                .cornerRadius(5)

                                                Spacer()

                                                HStack {
                                                    Image("FlagEmpty")
                                                        .resizable()
                                                        .scaledToFill()
                                                }
                                                .frame(width: 35, height: 35)
                                                .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                                            }
                                            .padding(.top, -60)
                                            .frame(width: (UIScreen.main.bounds.width - 50) / 2 - 20)
                                        }
                                        .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 250)
                                        .cornerRadius(10)
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                                        .padding(.top, 20)
                                        
                                        HStack() {
                                            Text("First Name")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                        }
                                        .frame(width: (UIScreen.main.bounds.width - 50) / 2, alignment: .leading)
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            }
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
            }
            .frame(alignment: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .customDialog(isShowing: $showSuggestionDialog) {
               VStack() {
                   Text("Who?")
                       .foregroundColor(Color.white)
                       .font(.system(size: 28))
                       .fontWeight(.bold)
                       .padding(.bottom, 20)
                   
                   HStack() {
                       Text("SWiiFT is currently active in California, but we started accepting members from around the globe. You may match with someone 1,000 km away. But no fear, it's small world after all. Hold tight. We'll be coming to your home town soon!")
                           .foregroundColor(Color.white)
                           .font(.system(size: 24))
                           .multilineTextAlignment(.center)
                   }
                   .frame(width: UIScreen.main.bounds.width - 150)
                   
                   Spacer()
                   
                   Button(action: {
                       self.showSuggestionDialog = false
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
               .padding(EdgeInsets(top: 50, leading: 10, bottom: 50, trailing: 10))
               .cornerRadius(20)
               .frame(width: UIScreen.main.bounds.width - 70, height: 600, alignment: .top)
               .background(Color.tabBackColor)
               .overlay(
                   RoundedRectangle(cornerRadius: 20)
                       .stroke(Color.globalButtonColor, lineWidth: 10)
               )
           }
           .customDialog(isShowing: $showCompatibilityDialog) { // HERE
               VStack() {
                   Text("What's this?")
                       .foregroundColor(Color.white)
                       .font(.system(size: 28))
                       .fontWeight(.bold)
                       .padding(.bottom, 20)
                   
                   HStack() {
                       Text("The SWiiFT compatibility algorithm was designed to predict your compatibility with other users. The higher your compatibility score, the more likely you are to hit it off with this person!showCompatibility")
                           .foregroundColor(Color.white)
                           .font(.system(size: 24))
                           .multilineTextAlignment(.center)
                   }
                   .frame(width: UIScreen.main.bounds.width - 150)
                   
                   Spacer()
                   
                   Button(action: {
                       self.showCompatibilityDialog = false
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
               .padding(EdgeInsets(top: 50, leading: 10, bottom: 50, trailing: 10))
               .cornerRadius(20)
               .frame(width: UIScreen.main.bounds.width - 70, height: 600, alignment: .top)
               .background(Color.tabBackColor)
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
struct LocalsChatView_Previes: PreviewProvider {
    static var previews: some View {
        LocalsChatView()
    }
}
#endif
