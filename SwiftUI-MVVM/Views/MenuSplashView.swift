//
//  MenuSplashView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct MenuSplashView: View {
    @State var selectionLogin: Int? = nil
    @State var selectionRegister: Int? = nil
    
    var body: some View {
        ZStack() {
            HStack {
                Image("MenuSplashScreen")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
            VStack(spacing: 50.0) {
                VStack() {
                    HStack() {
                        Text("Experience new")
                            .foregroundColor(Color.white)
                            .font(.system(size: 31))
                            .fontWeight(.bold)
                            
                        Text("cities")
                            .foregroundColor(Color.globalButtonColor)
                            .font(.system(size: 31))
                            .fontWeight(.bold)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    HStack() {
                        Text("with new")
                            .foregroundColor(Color.white)
                            .font(.system(size: 31))
                            .fontWeight(.bold)
                        
                        Text("people")
                            .foregroundColor(Color.globalButtonColor)
                            .font(.system(size: 31))
                            .fontWeight(.bold)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50)
                
                VStack(spacing: 20.0) {
                    NavigationLink(destination: LoginSplashView(), tag: 1, selection: $selectionLogin) {
                            Button(action: {
                                print("Hello, World !")
                                self.selectionLogin = 1
                            }) {
                                Text("LOGIN")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .padding()
                                    .foregroundColor(.black)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.globalButtonColor, lineWidth: 2)
                                )
                            }
                            .background(Color.globalButtonColor) // If you have this
                            .cornerRadius(25)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50, alignment: .bottom)
                    }
                
                    NavigationLink(destination: RegisterSplashView(), tag: 2, selection: $selectionRegister) {
                            Button(action: {
                                print("Hello, World !")
                                self.selectionRegister = 2
                            }) {
                                Text("SIGN UP")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .padding()
                                    .foregroundColor(.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.white, lineWidth: 5)
                                )
                            }
                            .background(Color.tabBackColor) // If you have this
                            .cornerRadius(25)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50, alignment: .bottom)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            .padding(.top, UIScreen.main.bounds.height / 2)
        }
        .background(Color.tabBackColor)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct MenuSplashView_Previes: PreviewProvider {
    static var previews: some View {
        MenuSplashView()
    }
}
#endif
