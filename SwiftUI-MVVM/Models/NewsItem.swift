//
//  NewsItem.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/9/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation

struct NewsItem: Identifiable, Codable {
    var id = UUID()
    let title: String
    let body: String
    let date: Date
    
    private enum CodingKeys: String, CodingKey {
        case title
        case body
        case date
    }
}
