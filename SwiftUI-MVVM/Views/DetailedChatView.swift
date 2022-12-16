//
//  DetailedChatView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct DetailedChatView: View {
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
                            HStack() {
                                Image("LocalUserDefaultAvatar")
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 40, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                            Text("First Name")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.leading, 20)
                        }
                    }
                    
                    HStack {
                        HStack() {
                            Image("LocalUserDefaultAvatar")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.white, style: StrokeStyle(lineWidth: 5)))
                        
                        VStack {
                            HStack() {
                                Text("Name of Sender")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 19))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 200, alignment: .leading)
                            
                            HStack () {
                                Text("Lorem ipsum dolor ait amet, consectetur adipiscing edit.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16))
                            }
                            .frame(width: UIScreen.main.bounds.width - 200, alignment: .leading)
                            
                        }
                        .padding(.bottom, -40)
                        .padding(.leading, 10)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                    .padding(.top, 30)
                    
                    VStack() {
                        HStack() {
                            Text("Pull to refresh")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.bottom, 10)
                        ZStack(alignment: .leading) {
                            Text("Aa")
                                .foregroundColor(Color.white.opacity(0.4))
                                .font(.system(size: 24))
                            TextField("", text: $localTravel, onEditingChanged: {
                                self.localTravelSearch = $0 // true
                            }, onCommit: {
                                self.output = localTravel
                            })
                            .foregroundColor(Color.white)
                            .autocapitalization(.none)
                            .font(.system(size: 24))
//                            .keyboardType(.decimalPad)
                            .padding(.leading, 40)
                            .padding(.bottom, 5)
                            .frame(width: UIScreen.main.bounds.width - 110)
                            HStack() {
                                Image("ChatSubmit")
                            }
                            .frame(width: 30, height: 30)
                            .background(Color.globalButtonSecondColor)
                            .cornerRadius(100)
                            .padding(.leading, UIScreen.main.bounds.width - 100)
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
                    .padding(.top, UIScreen.main.bounds.height - 390)
                    .zIndex(1)
                    
                    if self.localTravel == "travel" {
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
                    
                    if self.localTravel == "local" {
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
struct DetailedChatView_Previes: PreviewProvider {
    static var previews: some View {
        DetailedChatView()
    }
}
#endif
