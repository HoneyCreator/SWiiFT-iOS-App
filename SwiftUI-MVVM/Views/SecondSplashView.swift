//
//  SecondSplashView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct SecondSplashView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Image("SecondSplashTopScreen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 2)
                
                Image("SecondSplashBottomScreen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: UIScreen.main.bounds.height / 2)
            }
        
            Text("Traveler")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, UIScreen.main.bounds.height / 2 - 130)
                .padding(.leading, 20)
                .font(.system(size: 48))
            
            Text("Meet the best people wherever you travel and truly experience new cities like a local")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, UIScreen.main.bounds.height / 2 - 70)
                .padding(.leading, 25)
                .padding(.trailing, 40)
                .font(.system(size: 16))
            
            Text("Local")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, UIScreen.main.bounds.height / 2 + 20)
                .padding(.leading, 20)
                .font(.system(size: 48))
            
            Text("Meet the most compatible international" + "\n" + "people coming to your city and make your friendships global")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.top, UIScreen.main.bounds.height / 2 + 80)
                .padding(.leading, 25)
                .padding(.trailing, 40)
                .font(.system(size: 16))
            
            VStack() {
                NavigationLink(destination: MenuSplashView().navigationBarBackButtonHidden(true), tag: 1, selection: $selection) {
                        Button(action: {
                            print("Second Splash View!")
                            self.selection = 1
                        }) {
                            Text("NEXT")
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
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 100)
            
            VStack {
                HStack(spacing: 30) {
                    VStack() {
                    }
                    .frame(width: 13, height: 13)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    VStack() {
                    }
                    .frame(width: 13, height: 13)
                    .background(Color.globalButtonColor)
                    .cornerRadius(10)
                }
                .padding(.top, -50)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct SecondSplashView_Previews : PreviewProvider {
    static var previews: some View {
        SecondSplashView()
    }
}
#endif
