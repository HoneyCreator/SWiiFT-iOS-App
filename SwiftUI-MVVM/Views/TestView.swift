//
//  TestView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/2/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, World")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
            }
        }
//        .navigationBarTitle("")
//        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
    }
}

#if DEBUG
struct TestView_Preview: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
#endif
