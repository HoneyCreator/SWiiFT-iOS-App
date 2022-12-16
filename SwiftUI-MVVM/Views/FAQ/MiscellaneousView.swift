//
//  MiscellaneousView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct MiscellaneousView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("11. Miscellaneous")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
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
                    Text("This Agreement which includes the Privacy Policy contains the entire agreement between you and SWiiFT regarding your relationship with SWiiFT and the use of the Service, save for anyone who opted out of the retroactive application of the Dispute Section who is still subject to and bound by any prior agreements to arbitrate with SWiiFT as well as this agreement to arbitrate on a going forward basis.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
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
                    Text("If any provision of this Agreement is held invalid, the remainder of this Agreement shall continue in full force and effect.")
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
                    Text("SWiiFT’s failure to exercise or enforce any right or provision of this Agreement shall not constitute a waiver of such right or provision.")
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
                    Text("No agency, partnership, joint venture, fiduciary or other special relationship or employment is created as a result of this Agreement, and you may not make any representations on behalf of or")
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

//#if DEBUG
//struct MiscellaneousView: PreviewProvider {
//    static var previews: some View {
//        MiscellaneousView()
//    }
//}
//#endif
