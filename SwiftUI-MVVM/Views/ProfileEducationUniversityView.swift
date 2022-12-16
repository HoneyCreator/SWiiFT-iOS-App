//
//  ProfileEducationUniversityView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/20/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileEducationUniversityView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var universityName: String = ""
    @State private var majorName: String = ""
    @State private var degreeName: String = ""
    @State private var yearCount: String = ""
    @State private var output: String = ""
    @State private var majorInput = false
    @State private var degreeInput = false
    let states: [String] = [
        "Afghanistan",
        "Albania",
        "Algeria",
        "Andorra",
        "Angola",
        "Antigua and Barbuda",
        "Argentina",
        "Armenia",
        "Australia",
        "Austria",
        "Austrian Empire*",
        "Azerbaijan",
        "Baden*",
        "Bahamas, The",
        "Bahrain",
        "Bangladesh",
        "Barbados",
        "Bavaria*",
        "Belarus",
        "Belgium",
        "Belize",
        "Benin (Dahomey)",
        "Bolivia",
        "Bosnia and Herzegovina",
        "Botswana",
        "Brazil",
        "Brunei",
        "Brunswick and Lüneburg",
        "Bulgaria",
        "Burkina Faso (Upper Volta)",
        "Burma",
        "Burundi",
        "Cabo Verde",
        "Cambodia",
        "Cameroon",
        "Canada",
        "Cayman Islands, The",
        "Central African Republic",
        "Central American Federation*",
        "Chad",
        "Chile",
        "China",
        "Colombia",
        "Comoros",
        "Congo Free State, The",
        "Costa Rica",
        "Cote d’Ivoire (Ivory Coast)",
        "Croatia",
        "Cuba",
        "Cyprus",
        "Czechia",
        "Czechoslovakia",
        "Democratic Republic of the Congo",
        "Denmark",
        "Djibouti",
        "Dominica",
        "Dominican Republic",
        "Duchy of Parma, The*",
        "East Germany (German Democratic Republic)*",
        "Ecuador",
        "Egypt",
        "El Salvador",
        "Equatorial Guinea",
        "Eritrea",
        "Estonia",
        "Eswatini",
        "Ethiopia",
        "Federal Government of Germany (1848-49)*",
        "Fiji",
        "Finland",
        "France",
        "Gabon",
        "Gambia, The",
        "Georgia",
        "Germany",
        "Ghana",
        "Grand Duchy of Tuscany, The*",
        "Greece",
        "Grenada",
        "Guatemala",
        "Guinea",
        "Guinea-Bissau",
        "Guyana",
        "Haiti",
        "Hanover*",
        "Hanseatic Republics*",
        "Hawaii*",
        "Hesse*",
        "Holy See",
        "Honduras",
        "Hungary",
        "Iceland",
        "India",
        "Indonesia",
        "Iran",
        "Iraq",
        "Ireland",
        "Israel",
        "Italy",
        "Jamaica",
        "Japan",
        "Jordan",
        "Kazakhstan",
        "Kenya",
        "Kingdom of Serbia/Yugoslavia*",
        "Kiribati",
        "Korea",
        "Kosovo",
        "Kuwait",
        "Kyrgyzstan",
        "Laos",
        "Latvia",
        "Lebanon",
        "Lesotho",
        "Lew Chew (Loochoo)*",
        "Liberia",
        "Libya",
        "Liechtenstein",
        "Lithuania",
        "Luxembourg",
        "Madagascar",
        "Malawi",
        "Malaysia",
        "Maldives",
        "Mali",
        "Malta",
        "Marshall Islands",
        "Mauritania",
        "Mauritius",
        "Mecklenburg-Schwerin*",
        "Mecklenburg-Strelitz*",
        "Mexico",
        "Micronesia",
        "Moldova",
        "Monaco",
        "Mongolia",
        "Montenegro",
        "Morocco",
        "Mozambique",
        "Namibia",
        "Nassau*",
        "Nauru",
        "Nepal",
        "Netherlands, The",
        "New Zealand",
        "Nicaragua",
        "Niger",
        "Nigeria",
        "North German Confederation*",
        "North German Union*",
        "North Macedonia",
        "Norway",
        "Oldenburg*",
        "Oman",
        "Orange Free State*",
        "Pakistan",
        "Palau",
        "Panama",
        "Papal States*",
        "Papua New Guinea",
        "Paraguay",
        "Peru",
        "Philippines",
        "Piedmont-Sardinia*",
        "Poland",
        "Portugal",
        "Qatar",
        "Republic of Genoa*",
        "Republic of Korea (South Korea)",
        "Republic of the Congo",
        "Romania",
        "Russia",
        "Rwanda",
        "Saint Kitts and Nevis",
        "Saint Lucia",
        "Saint Vincent and the Grenadines",
        "Samoa",
        "San Marino",
        "Sao Tome and Principe",
        "Saudi Arabia",
        "Schaumburg-Lippe*",
        "Senegal",
        "Serbia",
        "Seychelles",
        "Sierra Leone",
        "Singapore",
        "Slovakia",
        "Slovenia",
        "Solomon Islands, The",
        "Somalia",
        "South Africa",
        "South Sudan",
        "Spain",
        "Sri Lanka",
        "Sudan",
        "Suriname",
        "Sweden",
        "Switzerland",
        "Syria",
        "Tajikistan",
        "Tanzania",
        "Texas*",
        "Thailand",
        "Timor-Leste",
        "Togo",
        "Tonga",
        "Trinidad and Tobago",
        "Tunisia",
        "Turkey",
        "Turkmenistan",
        "Tuvalu",
        "Two Sicilies*",
        "Uganda",
        "Ukraine",
        "Union of Soviet Socialist Republics*",
        "United Arab Emirates, The",
        "United Kingdom, The",
        "Uruguay",
        "Uzbekistan",
        "Vanuatu",
        "Venezuela",
        "Vietnam",
        "Württemberg*",
        "Yemen",
        "Zambia",
        "Zimbabwe"
    ];
    
    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            FontIcon
                .text(.materialIcon(code: .arrow_back), fontsize: 33)
                .foregroundColor(Color.white.opacity(0.4))
        }
    }
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    VStack(spacing: 0.0) {
                        HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                FontIcon
                                    .text(.materialIcon(code: .arrow_back), fontsize: 33)
                                    .foregroundColor(Color.white.opacity(0.4))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        .padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 0))
                        .zIndex(1)
                        HStack {
                            Text("University")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                        }
                    }
                    
                    VStack() {
                        HStack() {
                            Text("University Name")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        
                        ZStack(alignment: .leading) {
                            if universityName.isEmpty {
                                Text("e.g. UC Berkeley")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $universityName)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 20)
                    
                    VStack() {
                        HStack() {
                            Text("Major")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .search), fontsize: 33)
                                .foregroundColor(Color.white.opacity(0.4))
                            if majorName.isEmpty {
                                Text("Select Major")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                            }
                            TextField("", text: $majorName, onEditingChanged: {
                                self.majorInput = $0 // true
                            }, onCommit: {
                                self.output = self.majorName
                            })
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                        .overlay(
                            ScrollView {
                                VStack {
                                    if self.majorInput {
                                        ForEach(states, id: \.self) {(state: String) in
                                            Group {
                                                if state.contains(majorName) {
                                                    Button(action: {
                                                        self.majorName = state
                                                        self.majorInput = false
                                                    }) {
                                                        Text(state)
                                                            .frame(width: UIScreen.main.bounds.width - 90, alignment: .leading)
                                                            .foregroundColor(Color.black)
                                                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                                                            .font(.system(size: 22))
                                                    }
                                                    Divider()
                                                }
                                            }
                                        }
                                    }
                                }
                                .background(Color.white)
                            }
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 90, height: 170)
                            .padding(.top, 80), alignment: .top
                        )
                    }
                    .padding(.top, 40)
                    .zIndex(1)
                    
                    VStack() {
                        HStack() {
                            Text("Degree")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        
                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .search), fontsize: 33)
                                .foregroundColor(Color.white.opacity(0.4))
                            if degreeName.isEmpty {
                                Text("Select Degree")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                            }
                            TextField("", text: $degreeName, onEditingChanged: {
                                self.degreeInput = $0 // true
                            }, onCommit: {
                                self.output = self.degreeName
                            })
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
//                                .keyboardType(.decimalPad)
                                .padding(.leading, 40)
                                .padding(.bottom, 5)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .zIndex(1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                        .overlay(
                            ScrollView {
                                VStack {
                                    if self.degreeInput {
                                        ForEach(states, id: \.self) {(state: String) in
                                            Group {
                                                if state.contains(degreeName) {
                                                    Button(action: {
                                                        self.degreeName = state
                                                        self.degreeInput = false
                                                    }) {
                                                        Text(state)
                                                            .frame(width: UIScreen.main.bounds.width - 90, alignment: .leading)
                                                            .foregroundColor(Color.black)
                                                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                                                            .font(.system(size: 22))
                                                    }
                                                    Divider()
                                                }
                                            }
                                        }
                                    }
                                }
                                .background(Color.white)
                            }
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 90, height: 170)
                            .padding(.top, 80), alignment: .top
                        )
                    }
                    .padding(.top, 40)
                    .zIndex(1)
                    
                    VStack() {
                        HStack() {
                            Text("Year")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        
                        ZStack(alignment: .leading) {
                            if yearCount.isEmpty {
                                Text("Graduation Year")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $yearCount)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
//                                .keyboardType(.decimalPad)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 40)
                    
//                    HStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .tracking(2)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
//                    .padding(.top, 50)
                    
                    VStack() {
                        Button(action: {
                            print("SUBMIT for Profile Picture Setup")
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack() {
                                Text("SAVE")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)
                            }
                            .padding(.vertical, 15)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width - 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .padding(.top, 60)
                    .padding(.bottom, 50)
                }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
            }
            .frame(alignment: .top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .background(Color.tabBackColor)
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ProfileEducationUniversityView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEducationUniversityView()
    }
}
#endif
