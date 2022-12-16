//
//  SWiiFTRulesView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct SWiiFTRulesView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("5. SWiiFT Rules")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("By using the Service, you undertake to not:")
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
                    Text("use the Service for any purpose that is illegal, prohibited by this Agreement or any SWiiFT rules,")
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
                    Text("use the Service for any harmful or nefarious purpose,")
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
                    Text("use the Service in order to damage SWiiFT,")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
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
                    Text("spam or solicit money or other items of value from another member, whether as a gift, loan, or other form of compensation, or otherwise defraud any members,")
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
                    Text("impersonate any person or entity or post any images of another person without his or her permission,")
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
                    Text("bully, “stalk,” intimidate, assault, harass, mistreat or defame, or otherwise mistreat any person,")
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
                    Text("post any Content that violates or infringes anyone’s rights, including rights of publicity, privacy, copyright, trademark or other intellectual property or contract right,")
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
                    Text("post any Content that is hate speech, threatening, sexually explicit or pornographic, incites violence or contains nudity or graphic or gratuitous violence,")
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
                    Text("post any Content that promotes racism, bigotry, hatred or physical harm of any kind against any group or individual,")
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
                    Text("solicit passwords for any purpose, or personal identifying information for commercial or unlawful purposes from other users or disseminate another person’s personal information without his or her permission,")
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
                    Text("use another user’s account, share an account with another user, or maintain more than one account,")
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
                    Text("misrepresent your identity, age, current or previous positions, qualifications, or affiliations with a person or entity,")
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
                    Text("create another account if we have already terminated your account, unless you have our permission.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
            }
            Group {                
                HStack(alignment: .top, spacing: 10) {
                    Text("SWiiFT reserves the right to investigate and/or terminate your account without any indemnity or refund if you have violated this Agreement, misused the Service or behaved in a way that SWiiFT regards as inappropriate or unlawful, including actions or communications that occur on or off the Service. In the event that you violate these rules, your account and your license to use the Service will be automatically terminated.")
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

#if DEBUG
struct SWiiFTRulesView_Preview: PreviewProvider {
    static var previews: some View {
        SWiiFTRulesView()
    }
}
#endif
