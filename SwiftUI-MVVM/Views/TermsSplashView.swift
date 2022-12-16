//
//  TermsSplashView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct TermsSplashView: View {
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
                                    .font(.system(size: 18))
                                    .padding(.top, 1)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        VStack {
                            HStack {
                                Text("1. Agreement on our Terms of Use")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("By creating a SWiiFT account or using any SWiiFT service via the SWiiFT app (the “Service”), you agree to be bound by our Terms of Use and any terms disclosed to you (this “Agreement”). If you do not accept and agree to be bound by all of the terms of this Agreement, you should not access or use the Service." + "\n" +
                                    "We may make changes to this Agreement and to the Service from time to time to reflect changes in or requirements of the law, new features, changes in business practices or any other reason. You should regularly check for the most recent version on swiiftapp.com that is the version that applies. If the changes include material changes to your rights or obligations, we will notify you in advance of the changes (unless we are unable to do so under applicable law) by any reasonable mean. If you continue to use the Service after the changes become effective, then you agree to the revised Agreement that shall supersede any prior agreements and shall govern your entire relationship with SWiiFT.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                            HStack {
                                Text("To improve the Service, we may add new product features or enhancements from time to time as well as remove some features, and if these actions do not materially affect your rights or obligations, we may not provide you with notice before taking them. We may even suspend the Service entirely, in which event we will notify you in advance unless extenuating circumstances, such as safety or security concerns, prevent us from doing so.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("2. Eligibility Conditions")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 30)
                            HStack {
                                Text("You must be at least 18 years of age to open an account on SWiiFT and use the Service. By opening an account and using the Service, you represent and warrant that:" + "\n" + "you can enter into a binding contract with SWiiFT,")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                            Group {
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
                                    Text("you are not a person who is barred from using the Service under the laws of the United States or any other applicable jurisdiction,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("you will comply with this Agreement and all applicable local, state, national and international laws, rules and regulations,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("you have not committed, been convicted of, or pled no contest to a felony, a sex crime, or any crime involving violence or a threat of violence, and you are not required to register as a sex offender with any state, federal or local sex offender registry,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("you do not have more than one account on the Service, and")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("you have not previously been removed from the Service by us, unless you have our express written permission to open a new account.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                                .padding(.top, -10)
                            }
                            HStack {
                                Text("If at any time you cease to meet these requirements, all authorization to access our Service or systems will be automatically revoked and you must immediately delete your account.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, -10)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 30)
                        VStack {
                            HStack {
                                Text("3. Your SWiiFT Account")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("In order to use SWiiFT, you may sign in using you email address. You are responsible for maintaining the confidentiality of the login credentials you use to sign up for SWiiFT, and you are solely responsible for all activities that occur under those credentials. If you think someone has gained access to your account, please immediately contact us at swiift.help@gmail.com. SWiiFT may terminate your account at any time without notice if it believes that you have violated this Agreement, and/or you do any of the following:")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                            Group {
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
                                    Text("use the Service or any content contained in the Service for any commercial purposes without our written consent,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("copy, modify, transmit, make use of, or reproduce in any way any copyrighted material, images, trademarks, trade names, service marks, or other intellectual property, content or proprietary information accessible through the Service without our prior written consent,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("express or imply that any statements you make are endorsed by SWiiFT,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("reproduce or circumvent in any way the navigational structure or presentation of the Service or its contents,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("use the Service in any way that could interfere with, disrupt or negatively affect the Service or the servers or networks connected to the Service,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("upload viruses or other malicious code or otherwise compromise the security of the Service,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                    Text("forge headers or otherwise manipulate identifiers in order to disguise the origin of any information transmitted to or through the Service,")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                                .padding(.top, -10)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .padding(.top, 30)
                        VStack() {
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
                                Text("use any reference to SWiiFT or the Service to direct any person to any other app or website for any purpose,")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                Text("use, access, or publish the SWiiFT application programming interface without our prior written consent,")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                Text("probe, scan or test the vulnerability of our Service,")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                                Text("encourage, promote, or agree to engage in any activity that violates this Agreement.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                            .padding(.top, -10)
                        }
                        VStack {
                            HStack {
                                Text("Upon such termination, you will not be entitled to any refund or indemnity." + "\n" + "You may terminate your account at any time, for any reason, by following the relevant instructions in the Service.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("Upon termination of your account, this Agreement will terminate, except that the following provisions will still apply: Sections 4, 6, 7 and 8." + "\n" + "You agree that your SWiiFT account is non-transferable and all of your rights to your account (including its Content as defined in Section 4) terminate upon your death.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, -10)
                        }
                        LicenseView()
                        SWiiFTRulesView()
                        InteractionServiceView()
                        SWiiFTLiView()
                        DispuiteView()
                    }
                    Group {
                        GoverningLawView()
                        IdemnityView()
                        MiscellaneousView()
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
struct TermsSplashView_Previes: PreviewProvider {
    static var previews: some View {
        TermsSplashView()
    }
}
#endif
