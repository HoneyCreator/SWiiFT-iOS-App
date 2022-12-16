//
//  ChannelListView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/2/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit
import SendBirdUIKit

extension UIImage {
    
    func resizeImageTo(size: CGSize) -> UIImage? {
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(origin: CGPoint.zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resizedImage
    }
}

extension UIImage {

    public func rounded(radius: CGFloat) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIBezierPath(roundedRect: rect, cornerRadius: radius).addClip()
        draw(in: rect)
        return UIGraphicsGetImageFromCurrentImageContext()!
    }

}

@IBDesignable class PaddingLabel: UILabel {

    @IBInspectable var topInset: CGFloat = 0.0
    @IBInspectable var bottomInset: CGFloat = 0.0
    @IBInspectable var leftInset: CGFloat = 0.0
    @IBInspectable var rightInset: CGFloat = 0.0

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }

    override var bounds: CGRect {
        didSet {
            // ensures this works within stack views if multi-line
            preferredMaxLayoutWidth = bounds.width + (leftInset + rightInset)
        }
    }
}

class ControlledNavigationHostingController<Content>: UIHostingController<AnyView> where Content: View {
  public init(shouldShowNavigationBar: Bool, rootView: Content) {
      super.init(rootView: AnyView(rootView.navigationBarHidden(true)))
    navigationController?.isNavigationBarHidden = true
  }
  @objc required dynamic init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class ChannelListVC: SBUChannelListViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        self.titleView = self.createCustomTitleLabel()
        self.leftBarButton = self.createHighlightedBackButton()
        let newTheme = SBUTheme(channelListTheme: .dark,
                    channelCellTheme: .dark,
                    channelTheme: .dark,
                    messageInputTheme: .dark,
                    messageCellTheme: .dark,
                    userListTheme: .dark,
                    userCellTheme: .dark,
                    channelSettingsTheme: .dark,
                    componentTheme: .dark)

        SBUTheme.set(theme: newTheme)
    }

    func createHighlightedBackButton() -> UIBarButtonItem {
        return  UIBarButtonItem(image: UIImage(named: "BackButton")?.resizeImageTo(size: CGSize(width: 25, height: 25)), style: .plain, target: self, action:
        #selector(onClickBackButton))
    }
    
    func createCustomTitleLabel() -> UILabel {
        let titleLabel = PaddingLabel()
        titleLabel.font = UIFont.systemFont(ofSize: 22)
        let iconsSize = CGRect(x: 0, y: -5, width: 30, height: 30)
        let attributedString = NSMutableAttributedString(string: "Chats")
//        let avatarAttachment = NSTextAttachment()
//        avatarAttachment.image = UIImage(named: "LocalUserDefaultAvatar")?.resizeImageTo(size: CGSize(width: 50, height: 50))?.rounded(radius: 10)
//        avatarAttachment.bounds = iconsSize
//        attributedString.append(NSAttributedString(attachment: avatarAttachment))
//        attributedString.append(NSAttributedString(string: " "))
//        attributedString.append(NSAttributedString(string: " "))
//        attributedString.append(NSAttributedString(string: " "))
//        attributedString.append(NSAttributedString(string: "First Name"))
        titleLabel.attributedText = attributedString
        titleLabel.textColor = UIColor.white
        return titleLabel
    }
    
    @objc func onClickBackButton() {
        let splitContentViewController = ControlledNavigationHostingController(shouldShowNavigationBar: true, rootView: ContentView())
        self.navigationController?.pushViewController(splitContentViewController, animated: true)
    }
}

class ChannelListViewController : UIViewController {
    
    // 3a. Create a UINavigationController with the Sendbird channel list
    //     view controller as it's root view controller
    @objc
    func displaySendbirdChanelList(){
        let clvc = ChannelListVC()
        let navc = UINavigationController(rootViewController: clvc)
        navc.title = "Sendbird SwiftUI Demo"
        navc.modalPresentationStyle = .fullScreen
        present(navc, animated: true)
    }
    
    // 3b. Present the UINavigationController above
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        displaySendbirdChanelList()
    }
}

struct ChannelListViewContainer: UIViewControllerRepresentable {
    
    // 4a. Set the typealias to the class in step 3
    typealias UIViewControllerType = ChannelListViewController
    
    // 4b. Have the makeUIViewController return an instance of the class from step 3
    func makeUIViewController(context: Context) -> ChannelListViewController {
        return ChannelListViewController()
    }
    
    // 4c. Add the required updateUIViewController function
    func updateUIViewController(_ uiViewController: ChannelListViewController, context: Context) {
    }
    
}
