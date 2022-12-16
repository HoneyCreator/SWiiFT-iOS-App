//
//  DispuiteView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 12/8/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI

struct DispuiteView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("8. Dispute")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width - 50, alignment: .topLeading)
            }
            Group {
                HStack(alignment: .top, spacing: 10) {
                    Text("If you are dissatisfied with our Service for any reason, please contact SWiiFT Customer Service first so we can try to resolve your concerns." + "\n" + "However, if you choose to pursue a dispute, claim or controversy against SWiiFT (including its employees, licensors or service providers) that arises from or relates in any way to this Agreement (including any alleged breach), the Service, or our relationship with you (altogether referred as “Dispute”), the following terms shall apply:")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, 1)
                HStack(alignment: .top, spacing: 10) {
                    Text("Notice of Dispute and Informal Dispute Resolution" + "\n" + "Before formally pursuing a Dispute in arbitration or small claims court, you agree to first send a fully detailed Dispute notice (“Notice”) to swiift.help@gmail.com. We will contact you and endeavour to solve the Dispute by friendly negotiation and settlement. If the Dispute is not resolved within 60 days after receipt of the Notice, any Party may initiate arbitration or small claims court case as provided below. Completion of this informal dispute resolution is a condition precedent to filing any demand for arbitration proceeding or small claims court action.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("Arbitration or Small Claims Court" + "\n" + "Any Dispute shall be exclusively resolved through final and binding arbitration except as specifically provided otherwise in this Dispute Section. Notwithstanding the foregoing, either you or SWiiFT may elect to have an individual claim heard in small claims court. If the request to proceed in small claims court is made after an arbitration has been initiated but before an arbitrator has been appointed, such arbitration shall be administratively closed. Any controversy over the small claims court’s jurisdiction shall be determined by the small claims court. All other issues are exclusively for the arbitrator to decide, including but not limited to scope and enforceability of this Dispute Section, as well as any request to proceed in small claims court that is made after an arbitrator has been appointed. If you or SWiiFT challenges the small claims court election in your Dispute, and a court of competent jurisdiction determines that the small claims court election is unenforceable, then such election shall be severed from this Agreement as to your Dispute. However, such court determination shall not be considered or deemed binding with respect to SWiiFT’s other contracting parties.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("In the event Dispute Section is for any reason held to be unenforceable, any litigation against SWiiFT (except for small claims court actions) may be commenced only in the federal or state courts located in Alameda County, California. You hereby irrevocably consent to those courts’ exercise of personal jurisdiction over you for such purposes and waive any claim that such courts constitute an inconvenient forum." + "\n" + "NAM Arbitration")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
            }
            Group {
                HStack(alignment: .top, spacing: 10) {
                    Text("This subsection applies when no small claims court election is made by either Party. The Parties agree that any Dispute shall be resolved through final and binding Arbitration to be administrated by (“NAM”) National Arbitration and Mediation and governed by NAM’s Comprehensive Dispute Resolution Rules and Procedures in effect at the time such claim is filed. Any award of the Arbitrator is final and binding and may be entered as a judgment in any court having jurisdiction." + "\n" + "For a copy of the NAM Rules, please visit https://www.namadr.com/resources/rules-fees-forms or contact NAM’s National Processing Center at 990 Stewart Avenue, 1st Floor, Garden City, NY 11530 and email address commercial@namadr.com.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("If, at any time, 25 or more similar demands for arbitration are asserted against SWiiFT or related parties by the same or coordinated counsel or entities (“Mass Filing”), consistent with the definition and criteria of Mass Filings set forth in the NAM’s Mass Filing Supplemental Dispute Resolution Rules and Procedures (“NAM’s Mass Filing Rules”, available at the web site mentioned here above), NAM’s Mass Filing Rules shall apply." + "\n" + "The Federal Arbitration Act shall also apply to any Dispute administered by NAM.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("Jury Trial and Class Action Waiver" + "\n" + "To the fullest extent allowable by law,")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
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
                    Text("You and SWiiFT each waive the right to a jury trial;")
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
                    Text("You and SWiiFT each waive the right to file or participate in a class action against the other or otherwise to seek relief on a class basis, including any currently pending actions against SWiiFT;")
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
                    Text("There shall be no right or authority for any claims to be arbitrated or litigated on a class, collective, representative, consolidated, or private attorney general basis;")
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
                    Text("The arbitrator can award the same relief available in court provided that the arbitrator may only award final relief (including injunctive or declaratory relief) in favor of the individual party seeking relief and only to the extent necessary to provide final relief warranted by that individual party’s claim;")
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
                    Text("The arbitrator may not award final relief for, against, or on behalf of anyone who is not a party to the arbitration on a class, collective, representative, or private attorney general basis.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 70, alignment: .leading)
                .padding(.top, -10)
            }
            Group {
                HStack(alignment: .top, spacing: 10) {
                    Text("If a court determines that any of these prohibitions in this paragraph are unenforceable as to a particular claim or request for relief (such as a request for public injunctive relief), and all appeals of that decision are exhausted or the decision is otherwise final, then you and SWiiFT agree that that particular claim or request for relief shall proceed in court but shall be stayed pending individual arbitration of the remaining claims for relief that you have brought. If this specific paragraph is found to be unenforceable, then the entirety of this arbitration provision (except for the jury trial waiver and the informal dispute resolution process) shall be null and void. This paragraph is an essential part of this arbitration agreement.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
                HStack(alignment: .top, spacing: 10) {
                    Text("Changes to the Agreement and retroactivity" + "\n" + "This Dispute Section applies to all Disputes between the Parties, including for any claims that accrued against you or SWiiFT prior to the time of your consent to this Agreement and to any claims that accrue against you or SWiiFT after your consent to this Agreement. Notwithstanding any provision in this Agreement to the contrary, you may elect to opt out of the retroactive application of this Dispute Section as to claims that have accrued against you or against SWiiFT prior to the time of your consent to this Agreement. You may opt out by sending us written notice, within 30 days of the time you consent to this Agreement, to the following email address: swiift.help@gmail.com. If you opt out of the retroactive application of this Dispute Section, you will still be subject to and bound by any Dispute Sections and Arbitration Procedures you previously agreed to, including any arbitration provisions, class action waivers, and retroactive application sections.")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 50, alignment: .leading)
                .padding(.top, -10)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding(.top, 50)
    }
}

#if DEBUG
struct DispuiteView_Preview: PreviewProvider {
    static var previews: some View {
        DispuiteView()
    }
}
#endif
