//
//  FirstSplashView.swift
//  SwiftUI-MVVM
//
//  Created by Yusuke Kita on 6/5/19.
//  Copyright © 2019 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

extension Color {
    static let globalButtonColor = Color("GlobalButtonColor")
    static let globalButtonSecondColor = Color("GlobalButtonSecondColor")
    static let localTravelerColor = Color("LocalTravelColor")
    static let skipButtonColor = Color("SkipButtonColor")
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context:	 UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        let controller = UIViewController()
        DispatchQueue.main.async {
            if let navigationController = controller.navigationController {
                self.configure(navigationController)
                print("Successfully obtained navigation controller")
            } else {
                print("Failed to obtain navigation controller")
            }
        }
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController,
                                context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
    }
}

struct FirstSplashView: View {
    @State var selection: Int? = nil
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.backgroundColor = .clear
        navBarAppearance.barTintColor = .clear
        navBarAppearance.tintColor = .black
        navBarAppearance.setBackgroundImage(UIImage(), for: .default)
        navBarAppearance.shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0.0) {
                    Image("FirstSplashScreen")
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                Group {
                    VStack() {
                        Image("Flag1")
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 100, alignment: .topLeading)
                    VStack() {
                        Image("Flag2")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 7)
                    .padding(.leading, UIScreen.main.bounds.width / 10)
                    VStack() {
                        Image("Flag3")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 7 - 45)
                    .padding(.leading, UIScreen.main.bounds.width / 3)
                    VStack() {
                        Image("Flag4")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 7 - 20)
                    .padding(.leading, UIScreen.main.bounds.width / 3 * 2 - 20)
                    VStack() {
                        Image("Flag5")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 10 - 10)
                    .padding(.leading, UIScreen.main.bounds.width / 5 * 4)
                    HStack() {
                        VStack() {
                            Image("Flag6")
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, UIScreen.main.bounds.height / 2 + 70)
                        .padding(.leading, UIScreen.main.bounds.width / 10)

                        VStack() {
                            Image("Flag7")
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, UIScreen.main.bounds.height / 2 + 50)
                        .padding(.trailing, UIScreen.main.bounds.width / 2 + 20)
                    }
                    VStack() {
                        Image("Flag8")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 2 + 20)
                    .padding(.leading, UIScreen.main.bounds.width - 70)
                }
                Group {
                    VStack() {
                        Image("Flag9")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 2 + 70)
                    .padding(.leading, UIScreen.main.bounds.width / 2)

                    VStack() {
                        Image("Flag10")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 2 + 80)
                    .padding(.leading, UIScreen.main.bounds.width / 2 + 90)

                    HStack(spacing: 70) {
                        Image("Flag11")

                        Image("Flag12")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 3 * 2 - 20)
                    .padding(.leading, UIScreen.main.bounds.width / 2 - 80)

                    HStack(spacing: 100) {
                        Image("Flag13")

                        Image("Flag14")

                        Image("Flag15")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 3 * 2 + 30)
                    .padding(.leading, 10)

                    HStack(spacing: 100) {
                        Image("Flag13")

                        Image("Flag14")

                        Image("Flag15")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 3 * 2 + 30)
                    .padding(.leading, 10)

                    HStack(spacing: 80) {
                        Image("Flag16")

                        Image("Flag17")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, UIScreen.main.bounds.height / 3 * 2 + 70)
                    .padding(.leading, 80)
                }
                ScrollView {
                    VStack() {
                        Text("Personalize your profile")
                            .foregroundColor(Color.white)
                            .font(.system(size: 48))
                            .fontWeight(.bold)
                        
                        NavigationLink(destination: SecondSplashView().navigationBarBackButtonHidden(true), tag: 1, selection: $selection) {
                            Button(action: {
                                print("First Splash View !")
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
                            .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .bottom)
                            .padding(.bottom, 100)
                            .padding(.top, UIScreen.main.bounds.height / 4)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .bottom)
                }
                VStack {
                    HStack(spacing: 30) {
                        VStack() {
                        }
                        .frame(width: 13, height: 13)
                        .background(Color.globalButtonColor)
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 13, height: 13)
                        .background(Color.white.opacity(0.5))
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
}

#if DEBUG
struct FirstSplashView_Previews : PreviewProvider {
    static var previews: some View {
        FirstSplashView()
    }
}
#endif
