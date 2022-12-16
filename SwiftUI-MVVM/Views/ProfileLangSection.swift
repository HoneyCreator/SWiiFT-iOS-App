//
//  ProfileLangSection.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileLangSection: View {
    @State private var selectionProfileLanguageView: Int? = nil
    
    var body: some View {
        NavigationView {
            Group {
                VStack(spacing: 5.0) {
                    HStack() {
                        Text("Language")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileLanguagesView(), tag: 1, selection: $selectionProfileLanguageView) {
                            Button(action: {
                                self.selectionProfileLanguageView = 1
                            }) {
                                HStack() {
                                    Text("Edit")
                                        .font(.system(size: 20))
                                        .foregroundColor(Color.white.opacity(0.4))
                                        .fontWeight(.medium)
                                    FontIcon
                                        .text(.awesome5Solid(code: .angle_right), fontsize: 20)
                                        .foregroundColor(Color.white.opacity(0.4))
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    
                    HStack() {
                        Text("Primary Language")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    
                    HStack() {
                        Text("Languages")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width - 50)
                .padding(.top, 10)
                
                HStack() {
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 5)
                .background(Color.globalButtonSecondColor)
                .cornerRadius(100)
            }
        }
    }
}

#if DEBUG
struct ProfileLangSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLangSection()
    }
}
#endif
