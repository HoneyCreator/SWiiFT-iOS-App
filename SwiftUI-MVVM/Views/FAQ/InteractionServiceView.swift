//
//  InteractionServiceView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct InteractionServiceView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("6. Your Interactions on the Service")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("You:" + "\n" + "You agree to treat other users in a courteous and respectful manner, both on and off our Services and to be respectful when communicating with any of our customer care representatives or other employees.")
                       .foregroundColor(Color.white)
                       .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                .padding(.top, 1)
                HStack {
                    Text("Other Members:" + "\n" + "SWiiFT is not responsible for the conduct of any member on or off of the Service. You agree to use caution in all interactions with other members, particularly if you decide to communicate off the Service or meet in person. You agree that you will not provide your financial information (for example, your credit card or bank account information), or wire or otherwise send money to other members.")
                       .foregroundColor(Color.white)
                       .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("You are solely responsible for your interactions with other members. You understand that SWiiFT does not conduct criminal background checks on its members or otherwise inquire into the background of its members. SWiiFT makes no representations or warranties as to the conduct or compatibility of members. SWiiFT reserves the right to conduct – and you authorize SWiiFT to conduct – any criminal background check or other screenings (such as sex offender register searches) at any time using available public records or through a consumer reporting agency, and you agree that any information you provide may be used for that purpose." + "\n" + "Although SWiiFT reserves the right to review and remove Content that violates this Agreement, such Content is the sole responsibility of the member who posts it, and SWiiFT cannot guarantee that all Content will comply with this Agreement. If you see Content on the Service that violates this Agreement, please report it within the Service.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("Third Parties:" + "\n" + "The Service may contain advertisements and promotions offered by third parties and links to other websites or resources. SWiiFT is not responsible for the availability (or lack of availability) of such external websites or resources. If you choose to interact with the third parties made available through our Service, such party’s terms will govern their relationship with you. SWiiFT is not responsible or liable for such third parties’ terms or actions.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
                HStack {
                    Text("Copyright infringement" + "\n" + "If you believe that your work has been copied and posted on the Service in a way that constitutes copyright infringement, please submit a detailed request to swiift.help@gmail.com. SWiiFT will investigate and terminate the accounts of repeat infringers.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding(.top, 50)
    }
}

#if DEBUG
struct InteractionServiceView_Preview: PreviewProvider {
    static var previews: some View {
        InteractionServiceView()
    }
}
#endif
