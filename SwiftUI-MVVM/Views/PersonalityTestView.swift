//
//  PersonalityTestView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct PersonalityTestView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileSetup: Int? = nil
    @State private var lifeStyle1: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle2: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle3: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle4: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle5: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle6: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var lifeStyle7: DropdownOption = DropdownOption(key: uniqueKey, value: "Male")
    @State private var selectionProfileSetupView: Int? = nil
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Male"),
        DropdownOption(key: uniqueKey, value: "Female"),
    ]
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
                            Text("Take the SWiiFT compatibility test!")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 38))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                        .padding(.leading, 20)
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
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    }
                    
                    VStack() {
                        Text("Select the answer to each of the questions that sounds most like you!")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding(.top, 40)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    
                    Group {
                        VStack() {
                            Text("Which lifestyle describes you best?")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 50)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle1 = option
                                    print(self.lifeStyle1)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        .zIndex(1)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle2 = option
                                    print(self.lifeStyle2)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        
                        VStack() {}
                        .frame(width: UIScreen.main.bounds.width, height: 10)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .padding(.top, 50)
                    }
                    
                    Group {
                        VStack() {
                            Text("It's Friday night, you're meeting friends. Do you...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 50)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle3 = option
                                    print(self.lifeStyle3)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        .zIndex(1)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle4 = option
                                    print(self.lifeStyle4)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        
                        VStack() {}
                        .frame(width: UIScreen.main.bounds.width, height: 10)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .padding(.top, 50)
                    }
                    
                    Group {
                        VStack() {
                            Text("You're planning weekend activities with friends. Will these involve...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 50)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle5 = option
                                    print(self.lifeStyle5)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        .zIndex(1)
                        
                        VStack() {
                            DropdownSelector(
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle6 = option
                                    print(self.lifeStyle6)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        
                        VStack() {}
                        .frame(width: UIScreen.main.bounds.width, height: 10)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .padding(.top, 50)
                    }
                    
                    Group {
                        VStack() {
                            Text("Based on your personality, you prefer...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        .padding(.top, 50)
                        
                        VStack() {
                            DropdownSelector(
                                
                                placeholder: "Select",
                                options: PersonalityTestView.options,
                                onOptionSelected: { option in
                                    self.lifeStyle7 =
                                    option
                                    print(self.lifeStyle7)
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width - 70)
                        .padding(.top, 20)
                        .zIndex(1)
                    }
                    
                    VStack() {
                        NavigationLink(destination: ProfilePicSetupView(), tag: 2, selection: $selectionProfileSetupView) {
                            Button(action: {
                                print("SUBMIT for Personality Test")
                                self.selectionProfileSetupView = 2
                            }) {
                                Text("SUBMIT")
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
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                    .padding(.top, 80)
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
struct PersonalityTestView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalityTestView()
    }
}
#endif
