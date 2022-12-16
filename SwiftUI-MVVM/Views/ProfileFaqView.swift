//
//  ProfileFaqView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileFaqView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                            Text("FAQs")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 0)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    Group {
                        VStack {
                            HStack {
                                Text("What does my level mean?")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            HStack {
                                Text("Level1")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            HStack(alignment: .top, spacing: 10) {
                                VStack {
                                }
                                .frame(width: 5, height: 5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding(.top, 10)
                                Text("Sign up and create an account with SWiiFT")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("Level2")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            HStack(alignment: .top, spacing: 10) {
                                VStack {
                                }
                                .frame(width: 5, height: 5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding(.top, 10)
                                Text("Fill up all your profile information")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack(alignment: .top, spacing: 10) {
                                VStack {
                                }
                                .frame(width: 5, height: 5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding(.top, 10)
                                Text("Let us know here when you’re done.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("Level3")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            HStack(alignment: .top, spacing: 10) {
                                VStack {
                                }
                                .frame(width: 5, height: 5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding(.top, 10)
                                Text("Have your first meetup with a SWiiFT user.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack() {
                                Text("Send us the following information on instagram @swiift.app")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, -10)
                            Group {
                                HStack(alignment: .top, spacing: 10) {
                                    Text("1.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                    Text("Have your first meetup with a SWiiFT user.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, -10)
                                HStack(alignment: .top, spacing: 10) {
                                    Text("2.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                    Text("Your new encounter’s name (first, last) as it appears on the app.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, -10)
                                HStack(alignment: .top, spacing: 10) {
                                    Text("3.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                    Text("A picture of both of you together.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, -10)
                                HStack() {
                                    Text("We will level up the two of you!")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                                .padding(.top, -10)
                                HStack {
                                    Text("Level4")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack(alignment: .top, spacing: 10) {
                                    VStack {
                                    }
                                    .frame(width: 5, height: 5)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 2)
                                    )
                                    .padding(.top, 10)
                                    Text("Have three SWiiFT meetups and follow the same procedure as indicated in level 3.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, -10)
                                HStack() {
                                    Text("Or")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack(alignment: .top, spacing: 10) {
                                    VStack {
                                    }
                                    .frame(width: 5, height: 5)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 2)
                                    )
                                    .padding(.top, 10)
                                    Text("Have two SWiiFT meetups and tag us in a social media post.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack {
                                    Text("Level5")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                        .fontWeight(.medium)
                                }
                                .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack(alignment: .top, spacing: 10) {
                                    VStack {
                                    }
                                    .frame(width: 5, height: 5)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 2)
                                    )
                                    .padding(.top, 10)
                                    Text("Have five SWiiFT meetups (including one in a city that is not your home city).")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                                .padding(.top, -10)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: .top)
                        .padding(.top, 30)
                    }
                    
                    Group {
                        VStack {
                            HStack {
                                Text("How can I get credit for my meet-ups?")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            HStack {
                                Text("Whenever you meet another user through SWiiFT, might it be as a local or a traveler, send us the following information on instagram @swiift.app:")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            HStack(alignment: .top, spacing: 10) {
                                Text("1.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                Text("Have your first meetup with a SWiiFT user.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack(alignment: .top, spacing: 10) {
                                Text("2.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                Text("Your new encounter’s name (first, last) as it appears on the app.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack(alignment: .top, spacing: 10) {
                                Text("3.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                Text("A picture of both of you together.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 60, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("We will increase your meetup score on your profile.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Have another question?")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            HStack {
                                Text("Send inquiries here using our feedback form.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            .padding(.top, 1)
                            
                            Button(action: {
                                
                            }) {
                                HStack {
                                    Text("Submit form")
                                        .foregroundColor(Color.globalButtonColor)
                                        .font(.system(size: 24))
                                }
                                .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                                .padding(.top, 10)
                            }
                            
                            HStack {
                                Text("Someone from the SWiiFT team typically responds within 48 hours.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            .frame(width: UIScreen.main.bounds.width - 40, alignment: .topLeading)
                            .padding(.top, 40)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, alignment: .top)
                        .padding(.top, 50)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 150, trailing: 30))
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
struct ProfileFaqView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileFaqView()
    }
}
#endif
