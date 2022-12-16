//
//  FAQView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct FAQView: View {
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
                            Text("Terms of Use")
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
                                Text("Our Terms of Use")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("Welcome to SWiiFT referred hereto as \"us\", \"we\", the \"Company\" or \"SWiiFT\". SWiiFT and you being each individually referred to as a \"Party\" or collectively as \"the Parties\".")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .padding(.top, 1)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 50)
                        
                        VStack {
                            HStack {
                                Text("1. Agreement on our Terms of Use")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("By creating a SWiiFT account or using any SWiiFT service via the SWiiFT app (the \"Service\"), you agree to be bound by our Terms of User and any terms disclosed to you (this \"Agreement\"). If you do not accept and agree to be bound by all of the terms of this Agreement, you should not access or use the Service.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                            HStack {
                                Text("2. Eligibility Conditions")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 50)
                            HStack {
                                Text("You must be at least 18 years of age to open an account on SWiiFT and use the Service. By opening an account and using the Service, you represent and warrant that:" + "\n" + "you can enter into a binding contract with SWiiFT,")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 50)
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
struct FAQView_Previes: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
#endif
