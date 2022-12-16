//
//  ProfileHobbiesView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileHobbiesView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var outdorrHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var outdorrHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var outdorrHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var indoorHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var indoorHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var indoorHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var sportsHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var sportsHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var sportsHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var artsHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var artsHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var artsHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var musicHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var musicHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var musicHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var eduHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var eduHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var eduHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var universityHobby1 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var universityHobby2 = DropdownOption(key: uniqueKey, value: "Tennis")
    @State private var universityHobby3 = DropdownOption(key: uniqueKey, value: "Tennis")
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Tennis"),
        DropdownOption(key: uniqueKey, value: "Swimming"),
        DropdownOption(key: uniqueKey, value: "Basketball"),
        DropdownOption(key: uniqueKey, value: "Watching TV"),
    ]
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
                VStack(alignment: .center) {
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
                            Text("Hobbies")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    HStack {
                        Text("Select up to 3 hobbies from each category.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    .padding(.top, 30)
                    
                    Group {
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Outdoors")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.outdorrHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.outdorrHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.outdorrHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                        
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Indoors")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.indoorHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.indoorHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.indoorHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                        
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Sports")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.sportsHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.sportsHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.sportsHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                        
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Arts")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.artsHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.artsHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.artsHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                        
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Music")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.musicHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.musicHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.musicHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                    }
                    
                    Group {
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("Educational & Professional")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.eduHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.eduHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.eduHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                        
                        VStack {
                            VStack() {
                                HStack() {
                                    Text("University Organizations")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                                
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.universityHobby1 = option
                                })
                                .padding(.horizontal)
                            }
                            .zIndex(2)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.universityHobby2 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                            VStack {
                                DropdownSelector(
                                    placeholder: "Select hobby",
                                    options: ProfileHobbiesView.options,
                                    onOptionSelected: { option in
                                        self.universityHobby3 = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                        }
                        .padding(.top, 20)
                    }
                    VStack() {
                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .tracking(2)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 100)
                    
                    VStack() {
                        Button(action: {
                            print("SUBMIT for Profile Picture Setup")
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack() {
                                Text("SAVE")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)
                            }
                            .padding(.vertical, 15)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 20)
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
struct ProfileHobbiesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHobbiesView()
    }
}
#endif
