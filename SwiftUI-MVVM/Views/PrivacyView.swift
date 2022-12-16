//
//  PrivacyView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct PrivacyView: View {
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
                            Text("Privacy")
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
                                Text("Privacy Policy")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("SWiiFT Corporation built the SWiiFT app as a Free app. This SERVICE is provided by SWiiFT Corporation at no cost and is intended for use as is." + "\n" + "This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                                    .padding(.top, 1)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("If you choose to use our Service, then you agree to the collection and use of information in relation to this policy." + "\n" + "The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at SWiiFT unless otherwise defined in this Privacy Policy.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)

                        VStack {
                            HStack {
                                Text("Information Collection & Use")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }

                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to name, address, email, date of birth. The information that we request will be retained by us and used as described in this privacy policy." + "\n" + "The app does use third-party services that may collect information used to identify you. Link to the privacy policy of third-party service providers used by the app")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
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
                                Text("Google Play Services")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
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
                                Text("Google Analytics for Firebase")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("Log Data")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 30)
                            HStack {
                                Text("We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device internet Protocol (\"IP\") address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Cookies")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }

                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory." + "\n" + "This Service does not use these \"cookies\" explicitly. However, the app may use third-party code and libraries that use \"cookies\" to collect information and improve their services. You have the option and know when a cookie is being setnt to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Service Providers")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }

                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("We may employ third-party companies and individuals due to the following reasons:")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
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
                                Text("To facilitate our Service;")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
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
                                Text("To provide the Service on our behalf;")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
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
                                Text("To perform Service-related services; or")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
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
                                Text("To assist us in analyzing how our Service is used.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, alignment: .topLeading)
                            .padding(.top, -10)
                            HStack {
                                Text("We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Security")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Links to Other Sites")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        
                        VStack {
                            HStack {
                                Text("Children's Privacy")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            HStack {
                                Text("These Services do not address anyone under the age of 18. We do not knowginly collect personally identifiable information from children under 18 years of age. In the ase we discover that a child under 18 has provided us with personal information, we immediately delete this from our servers. If you are parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            .padding(.top, 1)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                    }
                    Group {
                        VStack {
                            HStack {
                                Text("Changes to This Privacy Policy")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            VStack(spacing: 0) {
                                HStack {
                                    Text("We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by positing the new Privacy Policy on this page.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack {
                                    Text("This policy is effective as of 2022-09-19")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                                .padding(.top, 1)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
                        VStack {
                            HStack {
                                Text("Contact Us")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                            VStack(spacing: 0) {
                                HStack {
                                    Text("If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at swiift.help@gmail.com.")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                                .padding(.top, 1)
                                HStack {
                                    Text("This privacy policy page was created at privacypolicytemplate.net asd modified/generated by App Privacy Policy Generator")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 18))
                                }
                                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                                .padding(.top, 1)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .top)
                        .padding(.top, 30)
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
struct PrivacyView_Previes: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
#endif
