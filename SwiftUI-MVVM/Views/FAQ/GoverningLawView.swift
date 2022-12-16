//
//  GoverningLawView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct GoverningLawView: View {
    var body: some View {
        VStack {
            HStack {
                Text("9. Governing Law")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
            }
            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            HStack(alignment: .top, spacing: 10) {
                Text("The laws of California, U.S.A., shall apply to any Dispute.")
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
            }
            .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
            .padding(.top, 1)
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding(.top, 50)
    }
}

#if DEBUG
struct GoverningLawView_Preview: PreviewProvider {
    static var previews: some View {
        GoverningLawView()
    }
}
#endif
