//
//  SWiiFTLiView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct SWiiFTLiView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("7. SWiiFT’s Liability")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            }
            Group {
                HStack(alignment: .top, spacing: 10) {
                    Text("Liability Exclusion:")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
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
                    Text("SWiiFT provides the Service on an “as is” and “as available” basis and to the extent permitted by applicable law, grants no warranties of any kind, whether express, implied, statutory or otherwise with respect to the Service including, without limitation, any implied warranties of satisfactory quality, merchantability, fitness for a particular purpose or non-infringement.")
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
                    Text("SWiiFT does not represent or warrant that (a) the Service will be uninterrupted, secure or error free, (b) any defects or errors in the Service will be discovered or corrected, or (c) that any content or information you obtain on or through the Service will be accurate, or appropriate for your purposes.")
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
                    Text("SWiiFT assumes no responsibility for any Content that you or another member or third party posts, sends or receives through the Service. Any material downloaded or otherwise obtained through the use of the Service is accessed at your own discretion and risk.")
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
                    Text("SWiiFT disclaims and assumes no responsibility for any conduct of you or any other Member, on or off the service.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
            }
            Group {
                HStack(alignment: .top, spacing: 10) {
                    Text("Liability Limitation:")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
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
                    Text("SWiiFT, its affiliates, employees, licensors or service providers be liable for any indirect, consequential, exemplary, incidental, special, punitive, fixed, or enhanced damages, including, without limitation, loss of profits, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses, resulting from: (a) your access to or use of or inability to access or use the Service; (b) the conduct or content of any Members or third parties on or through any of our websites or in connection with the Service; or (c) any unauthorized access, use or alteration of your Content, even if  SWiiFT has been advised at any time of the possibility of such damages.")
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
                    Text("SWiiFT’s aggregate liability to you for any and all claims arising out of or relating to the Service or this Agreement exceed the amount paid, if any, by you to SWiiFT during the twenty-four (24) month period immediately preceding the date that you first file a lawsuit, arbitration or any other legal proceeding against SWiiFT, whether in law or in equity, in any tribunal. This damages limitation hereto applies (a) regardless of the ground upon which liability is based (whether default, contract, tort, statute, or otherwise), (b) irrespective of the type of breach of obligations, and (c) with respect to all events, the Service, and this Agreement.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("Some jurisdictions do not allow the exclusion or limitation of certain damages, so some or all of the exclusions and limitations in this section may not apply to you.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding(.top, 50)
    }
}

//#if DEBUG
//struct SWiiFTLiView_Preview: PreviewProvider {
//    static var body: some View {
//        SWiiFTLiView()
//    }
//}
//#endif
