//
//  LicenseView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct LicenseView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("4. License")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("By SWiiFT:" + "\n" + "SWiiFT grants you a personal, worldwide, royalty-free, non-assignable, non-exclusive, revocable, and non-sublicensable license to access and use the Service pursuant to this Agreement. This license and any authorization to access the Service are automatically revoked in any event causing the termination of your Account.")
                       .foregroundColor(Color.white)
                       .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                .padding(.top, 1)
                HStack {
                    Text("In consideration for SWiiFT allowing you to use the Service, you agree that we, our affiliates and our third-party partners may place advertising on the Service." + "\n" + "In consideration for SWiiFT allowing you to use the Service, you agree that we, our affiliates and our third-party partners may place advertising on the Service.")
                       .foregroundColor(Color.white)
                       .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("By YOU:" + "\n" + "By creating an account, you grant to SWiiFT a worldwide, transferable, sub-licensable, royalty-free, right and license to host, store, use, copy, display, reproduce, adapt, edit, publish, modify, reformat, incorporate into other works, advertise, distribute, and otherwise make available to the general public information you post, upload, display or otherwise make available ( “post”) on the Service or transmit to other members ( “Content”) or authorize us to access from third parties.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("By creating an account, you grant to SWiiFT a worldwide, transferable, sub-licensable, royalty-free, right and license to host, store, use, copy, display, reproduce, adapt, edit, publish, modify, reformat, incorporate into other works, advertise, distribute, and otherwise make available to the general public information you post, upload, display or otherwise make available ( “post”) on the Service or transmit to other members ( “Content”) or authorize us to access from third parties." + "\n" + "SWiiFT’s license to your Content shall be non-exclusive, except that SWiiFT’s license shall be exclusive with respect to derivative works created through use of the Service. Our license to your Content is subject to your rights under applicable law (including laws regarding personal data protection) and is for the limited purpose of operating, developing, providing, and improving the Service and researching and developing new ones. You agree that any Content you place or that you authorize us to place on the Service may be viewed by other members and may be viewed by any person visiting or participating in the Service.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("You guarantee agree that all information that you submit upon creation of your account is accurate and truthful and you have the right to post the Content on the Service and grant the license to SWiiFT above." + "\n" + "You understand and agree that we may monitor or review any Content you post as part of the Service. We may delete any Content, in whole or in part, that in our sole judgment violates this Agreement or may harm the reputation of the Service.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("You agree that SWiiFT may access, store, and disclose your Account information and Content if required to do so by law, by performing the Agreement or in a good faith belief that such access, storage or disclosure satisfies a legitimate interest, including to:")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            }
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
                    Text("comply with legal process,")
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
                    Text("enforce the Agreement,")
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
                    Text("respond to claims that any Content violates the rights of third parties,")
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
                    Text("respond to your requests for customer service, or")
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
                    Text("protect the rights, property or personal safety of the Company or any other person.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding(.top, 50)
    }
}

#if DEBUG
struct LicenseView_Preview: PreviewProvider {
    static var previews: some View {
        LicenseView()
    }
}
#endif
