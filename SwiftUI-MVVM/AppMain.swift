//
//  AppMain.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/9/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import SwiftUI

@main
struct AppMain: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

  var body: some Scene {
    WindowGroup {
      FirstSplashView()
    }
  }
}
