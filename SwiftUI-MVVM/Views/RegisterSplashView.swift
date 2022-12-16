//
//  RegisterSplashView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct RegisterSplashView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var selectionForgotPassword: Int? = nil
    @State var selectionLogin: Int? = nil
    @State var selectionTermsOfUse: Int? = nil
    @State var selectionLocalTravel: Int? = nil
    @ObservedObject var model = SignupFormModel()
    
    var body: some View {
        ZStack() {
            Image("RegisterScreen")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.tabBackColor)
                .opacity(0.9)
             
//            ScrollView {
                VStack() {
                    VStack {
                        Image("Logo")
                    }
                    .padding(.top, 130)
                    
                    Text("Create Account")
                        .font(.system(size: 45))
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                    
                    VStack(spacing: 20.0) {
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: )(code: .email), fontsize: 30)
                                .foregroundColor(Color.black.opacity(0.7))
                            if model.email.isEmpty {
                                Text("Email")
                                .font(.system(size: 22))
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding(.leading, 40)
                            }
                            TextField("", text: $model.email)
                                .foregroundColor(Color.black)
                                .padding(.leading, 40)
                                .autocapitalization(.none)
                                .keyboardType(.emailAddress)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 100)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white, lineWidth: 1)
                        )
                        
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .lock), fontsize: 33)
                                .foregroundColor(Color.black.opacity(0.7))
                            if model.password.isEmpty {
                                Text("Password")
                                .font(.system(size: 22))
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding(.leading, 40)
                            }
                            SecureField("", text: $model.password)
                                .foregroundColor(Color.black)
                                .padding(.leading, 40)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 100)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white, lineWidth: 1)
                        )
                        
//                        HStack() {
//                            Text("Forgot password?")
//                                .foregroundColor(Color.white)
//                                .fontWeight(.bold)
//                                .font(.system(size: 16))
//                        }
//                        .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .trailing)
                        
                        HStack() {
                            NavigationLink(destination: LocalTravelerView(), tag: 4, selection: $selectionLocalTravel) {
                                Button(action: {
                                    print("Sign Up Submitted !")
                                    if buttonOpacity == 1.0 {
                                        self.selectionLocalTravel = 4
                                    }
                                }) {
                                    Text("SIGN UP")
                                        .fontWeight(.medium)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .font(.system(size: 22))
                                        .padding()
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 3)
                                    )
                                }
                                .background(Color.globalButtonSecondColor) // If you have this
                                .cornerRadius(40)
                                .frame(maxWidth: UIScreen.main.bounds.size.width - 70, alignment: .bottom)
                                .opacity(buttonOpacity)
                            }
                            
                        }
                        .padding(.top, 50)
                        
                        HStack(spacing: 5.0) {
                            Text("By signing up I agree on the")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            NavigationLink(destination: TermsSplashView(), tag: 2, selection: $selectionTermsOfUse) {
                                Button(action: {
                                    self.selectionTermsOfUse = 2
                                }) {
                                    
                                    Text("terms of use")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                }
                            }
                        }
                        
                        HStack() {
                            Text("Already have an account?")
                                .foregroundColor(Color.white)
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                            NavigationLink(destination: LoginSplashView(), tag: 1, selection: $selectionLogin) {
                                Button(action: {
                                    self.selectionLogin = 1
                                }) {
                                    Text("Log in")
                                        .foregroundColor(Color.globalButtonColor)
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.top, 90)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
//            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    var buttonOpacity: Double {
        return model.formIsValid ? 1 : 0.5
    }
}

#if DEBUG
struct RegisterSplashView_Previes: PreviewProvider {
    static var previews: some View {
        RegisterSplashView()
    }
}
#endif
