//
//  LocalTravelerView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/15/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomDialog<DialogContent: View>: ViewModifier {
    @Binding var isShowing: Bool // Set this to show/hide dialog
    let dialogContent: DialogContent
    
    init(isShowing: Binding<Bool>,
         @ViewBuilder dialogContent: () -> DialogContent) {
        _isShowing = isShowing
        self.dialogContent = dialogContent()
    }
    	
    func body(content: Content) -> some View {
        // Wrap the view being modified in a ZStack and render dialog on top of it
        ZStack {
            content
            if isShowing {
                // the semi-transparent overlay
                Rectangle().foregroundColor(Color.black.opacity(0.6))
                // the dialog content is in a ZStack to pad it from the edges of the screen
                ZStack {
                    dialogContent
                        .background(
                            RoundedRectangle(cornerRadius: 20))
                    }.padding(40)
            }
        }
    }
}
extension View {
  func customDialog<DialogContent: View>(
    isShowing: Binding<Bool>,
    @ViewBuilder dialogContent: @escaping () -> DialogContent
  ) -> some View {
    self.modifier(CustomDialog(isShowing: isShowing, dialogContent: dialogContent))
  }
}
struct LocalTravelerView: View {
    @State private var showDialogForLocal = false
    @State private var showDialogForTravel = false
    @State private var selectionProfileSetup: Int? = nil
    var body: some View {
        ZStack() {
            HStack(spacing: 0.0) {
                VStack() {

                }
                .frame(maxWidth: UIScreen.main.bounds.width / 2, maxHeight: UIScreen.main.bounds.height)
                .background(Color.tabBackColor)
                VStack() {

                }
                .frame(maxWidth: UIScreen.main.bounds.width / 2, maxHeight: UIScreen.main.bounds.height)
                .background(Color.localTravelerColor)
            }
            ScrollView {
                VStack(spacing: 50) {
                    Text("Begin my adventure as a ...")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .frame(width: UIScreen.main.bounds.width - 90, alignment: .leading)
                        .multilineTextAlignment(.center)
                    Image("LocalTravelerScreen")
                        .resizable()
                        .frame(maxWidth: UIScreen.main.bounds.width - 90, maxHeight: 460)
                    
                    HStack() {
                        VStack() {
                            HStack() {
                                Button(action: {
                                    print("Local Printed !")
                                    self.showDialogForLocal = true
                                }) {
                                    Image("Info")
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width / 2 - 30, alignment: .trailing)
                            
                            NavigationLink(destination: ProfileSetupView(), tag: 1, selection: $selectionProfileSetup) {
                                Button(action: {
                                    print("Local Printed !")
                                    self.selectionProfileSetup = 1
                                }) {
                                    Text("local")
                                    .fontWeight(.bold)
                                    .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.width / 2 - 20)
                                    .font(.system(size: 22))
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.white, lineWidth: 7)
                                    )
                                }
                                .background(Color.tabBackColor) // If you have this
                                .cornerRadius(40)
                                .frame(maxWidth: UIScreen.main.bounds.size.width / 2 - 30)
                            }
                        }
                        
                        Spacer()
                        
                        VStack() {
                            HStack() {
                                Button(action: {
                                    print("Local Printed !")
                                    self.showDialogForTravel = true
                                }) {
                                    Image("Info")
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width / 2 - 30, alignment: .trailing)
                            
                            NavigationLink(destination: ProfileSetupView(), tag: 1, selection: $selectionProfileSetup) {
                                Button(action: {
                                    print("New in Town Printed !")
                                    self.selectionProfileSetup = 1
                                }) {
                                    Text("traveler")
                                        .fontWeight(.bold)
                                        .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.width / 2 - 20)
                                        .font(.system(size: 22))
                                        .padding()
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 7)
                                        )
                                }
                                .background(Color.tabBackColor) // If you have this
                                .cornerRadius(40)
                                .frame(maxWidth: UIScreen.main.bounds.size.width / 2 - 30)
                            }
                        }
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width
                           , alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .topLeading)
                .padding(.top, 50)
            }
        }
        .customDialog(isShowing: $showDialogForLocal) { // HERE
            VStack() {
                Text("Local?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I have been in town for a semester or more.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I have a couple of favorite spots in the city.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I already know at least a few people here.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                Text("If you answered 'yes' to 2 out of these 3 statements, consider yourself a local!")
                    .foregroundColor(Color.white)
                    .padding(.top, 20)
                
                Button(action: {
                    self.showDialogForLocal = false
                }) {
                    Text("GOT IT!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                .background(Color.globalButtonSecondColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 180)
                .padding(.top, 30)
            }
            .padding(40)
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .frame(maxWidth: UIScreen.main.bounds.width - 100)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .customDialog(isShowing: $showDialogForTravel) { // HERE
            VStack() {
                Text("Traveler?")
                    .foregroundColor(Color.white)
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I moved to town in the past few weeks.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I'm just visiting.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                HStack() {
                    Image("CheckIcon")
                    
                    Text("I don't know many people in this city.")
                        .foregroundColor(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
                
                Text("If you answered 'yes' to 2 out of these 3 statements, consider yourself a traveler!")
                    .foregroundColor(Color.white)
                    .padding(.top, 20)
                
                
                Button(action: {
                    self.showDialogForTravel = false
                }) {
                    Text("GOT IT!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .padding(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                .background(Color.globalButtonSecondColor) // If you have this
                .cornerRadius(40)
                .frame(width: UIScreen.main.bounds.width - 180)
                .padding(.top, 30)
            }
            .padding(40)
            .background(Color.tabBackColor)
            .cornerRadius(20)
            .frame(maxWidth: UIScreen.main.bounds.width - 100)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.globalButtonColor, lineWidth: 10)
            )
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct LocalTravelerView_Previes: PreviewProvider {
    static var previews: some View {
        LocalTravelerView()
    }
}
#endif

