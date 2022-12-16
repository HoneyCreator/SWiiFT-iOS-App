//
//  ProfileSetupView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/13/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileSetupView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age = ""
    @State private var gender = DropdownOption(key: uniqueKey, value: "Male")
    @State private var country = ""
    @State private var selectionLocalTravel: Int? = nil
    @State private var selectionPersonalityTest: Int? = nil
    @State private var countrySearch = false
    @State private var output: String = ""
    @ObservedObject var model = FirstProfileModel()
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Male"),
        DropdownOption(key: uniqueKey, value: "Female"),
    ]
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

    var buttonOpacity: Double {
        return model.formIsValid ? 1 : 0.5
    }

    var body: some View {
        
        ScrollView {
            ZStack {
                VStack() {
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
                        HStack {
                            Text("Let's start basic")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 38))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }

                    HStack() {
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.globalButtonColor)
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        VStack() {
                        }
                        .frame(width: 10, height: 10)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    }
                    .padding(.top, 20)

                    VStack() {
                        HStack() {
                            Text("My first name is ...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                        ZStack(alignment: .leading) {
                            if model.firstName.isEmpty {
                                Text("Enter your first name")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $model.firstName)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 40)
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                    VStack() {
                        HStack() {
                            Text("My last name is ...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                        ZStack(alignment: .leading) {
                            if model.lastName.isEmpty {
                                Text("Enter your last name")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $model.lastName)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 70)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 40)
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                    VStack() {
                        HStack() {
                            Text("My age is ...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                        ZStack(alignment: .leading) {
                            if model.age.isEmpty {
                                Text("Enter your age")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                            }
                            TextField("", text: $model.age)
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 70)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                    }
                    .padding(.top, 40)
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                    VStack() {
                        HStack() {
                            Text("I identify as ...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                        DropdownSelector(
                            placeholder: "Select gender",
                            options: ProfileSetupView.options,
                            onOptionSelected: { option in
                                print("Hello, World !")
                                self.gender = option
                                print(self.gender)
                        })
//                        .padding(.horizontal)
                        .zIndex(1)
                    }
                    .padding(.top, 40)
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                    VStack() {
                        HStack() {
                            Text("My country of origin is ...")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                        }
                        .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)

                        ZStack(alignment: .leading) {
                            FontIcon
                                .text(.materialIcon(code: .search), fontsize: 33)
                                .foregroundColor(Color.white.opacity(0.4))
                            if model.country.isEmpty {
                                Text("Country")
                                .font(.system(size: 24))
                                .foregroundColor(Color.white.opacity(0.5))
                                .padding(.leading, 40)
                            }
                            TextField("", text: $model.country, onEditingChanged: {
                                self.countrySearch = $0 // true
                            }, onCommit: {
                                self.output = model.country
                            })
                                .foregroundColor(Color.white)
                                .autocapitalization(.none)
                                .font(.system(size: 24))
                                .padding(.leading, 40)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width - 50)
                        .padding()
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.white.opacity(0.15), lineWidth: 1)
                        )
                        .overlay(
                            ScrollView {
                                VStack {
                                    if self.countrySearch {
                                        ForEach(states, id: \.self) {(state: String) in
                                            Group {
                                                if state.contains(model.country) {
                                                    Button(action: {
                                                        model.country = state
                                                        self.countrySearch = false
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
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                    .padding(.top, 40)
                    .zIndex(1)

                    VStack() {
                        NavigationLink(destination: PersonalityTestView(), tag: 2, selection: $selectionPersonalityTest) {
                            Button(action: {
                                print("NEXT for Profile SET UP")
                                if model.formIsValid {
                                    self.selectionPersonalityTest = 2
                                }
                            }) {
                                Text("NEXT")
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 22))
                                    .foregroundColor(Color.white)

                            }
                            .padding(.vertical, 25)
                            .background(Color.globalButtonSecondColor) // If you have this
                            .cornerRadius(40)
                            .frame(maxWidth: UIScreen.main.bounds.size.width / 2 - 20, alignment: .bottomTrailing)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(buttonOpacity)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .trailing)
                    .padding(.top, 80)
                    .padding(.bottom, 40)
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
struct ProfileSetupView_Previes: PreviewProvider {
    static var previews: some View {
        ProfileSetupView()
    }
}
#endif
