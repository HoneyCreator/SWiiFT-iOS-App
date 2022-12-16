//
//  AppDelegate.swift
//  SwiftUI-MVVM
//
//  Created by Yusuke Kita on 6/5/19.
//  Copyright © 2019 Yusuke Kita. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import FirebaseAnalytics

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
            Thread.sleep(forTimeInterval: 3.0)
            FirebaseApp.configure()
            FirebaseConfiguration.shared.setLoggerLevel(.min)
        
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
              options: authOptions) { _, _ in }
            application.registerForRemoteNotifications()
        
            Messaging.messaging().delegate = self
        
            return true
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
  func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    willPresent notification: UNNotification,
    withCompletionHandler completionHandler:
    @escaping (UNNotificationPresentationOptions) -> Void
  ) {
    process(notification)
    completionHandler([[.banner, .sound]])
  }

  func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    didReceive response: UNNotificationResponse,
    withCompletionHandler completionHandler: @escaping () -> Void
  ) {
    process(response.notification)
    completionHandler()
  }

  func application(
    _ application: UIApplication,
    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    Messaging.messaging().apnsToken = deviceToken
  }

  private func process(_ notification: UNNotification) {
    let userInfo = notification.request.content.userInfo
    UIApplication.shared.applicationIconBadgeNumber = 0
    if let newsTitle = userInfo["newsTitle"] as? String,
      let newsBody = userInfo["newsBody"] as? String {
      let newsItem = NewsItem(title: newsTitle, body: newsBody, date: Date())
      NewsModel.shared.add([newsItem])
      Analytics.logEvent("NEWS_ITEM_PROCESSED", parameters: nil)
    }
    Messaging.messaging().appDidReceiveMessage(userInfo)
    Analytics.logEvent("NOTIFICATION_PROCESSED", parameters: nil)
  }
}
extension AppDelegate: MessagingDelegate {
  func messaging(
    _ messaging: Messaging,
    didReceiveRegistrationToken fcmToken: String?
  ) {
    let tokenDict = ["token": fcmToken ?? ""]
    NotificationCenter.default.post(
      name: Notification.Name("FCMToken"),
      object: nil,
      userInfo: tokenDict)
  }
}


