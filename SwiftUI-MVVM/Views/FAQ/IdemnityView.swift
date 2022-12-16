//
//  IdemnityView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct IdemnityView: View {
    var body: some View {
        VStack {
            HStack {
                Text("10. Indemnity by You")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
            }
            .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            HStack(alignment: .top, spacing: 10) {
                Text("You agree, to the extent permitted under applicable law, to indemnify, defend and hold harmless SWiiFT, our affiliates, and our respective officers, directors, agents, and employees from and against any and all complaints, demands, claims, damages, losses, costs, liabilities and expenses, including attorney’s fees, due to, arising out of, or relating in any way to your access to or use of the Service, your Content, or your breach of this Agreement.")
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
struct IdemnityView_Preview: PreviewProvider {
    static var previews: some View {
        IdemnityView()
    }
}
#endif
