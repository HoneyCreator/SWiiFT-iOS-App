//
//  ProfileAccountEditView.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/21/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct ProfileAccountEditView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectionProfileView: Int? = nil
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age: String = ""
    @State private var gender = DropdownOption(key: uniqueKey, value: "Male")
    @State private var status = DropdownOption(key: uniqueKey, value: "Normal")
    @State private var countryName: String = ""
    @State private var output: String = ""
    @State private var countryInput = false
    @State private var currentStreet: String = ""
    @State private var currentCity: String = ""
    @State private var currentStateProvince: String = ""
    @State private var currentCountryName: String = ""
    @State private var currentCountryInput = false
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Male"),
        DropdownOption(key: uniqueKey, value: "Female"),
    ]
    static let statusOptions: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Success"),
        DropdownOption(key: uniqueKey, value: "Normal"),
        DropdownOption(key: uniqueKey, value: "Failed"),
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
                            Text("Edit Account")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .font(.system(size: 28))
                                .padding(.top, 30)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .top)
                        .background(Color.tabBackColor)
                    }
                    
                    VStack() {
                        Group {
                            HStack() {
                                Text("Full Name")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if firstName.isEmpty {
                                        Text("First Name")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $firstName)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 5)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if lastName.isEmpty {
                                        Text("Last Name")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $lastName)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 10)
                            
                            HStack() {
                                Text("Email")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            HStack() {
                                Text("Email cannot be edited in SWiiFT Beta.")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 5)
                            
                            HStack() {
                                Text("Age")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if age.isEmpty {
                                        Text("Enter your age")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $age)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
//                                        .keyboardType(.decimalPad)
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 10)
                            
                            HStack() {
                                Text("Gender")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            VStack() {
                                DropdownSelector(
                                    placeholder: "Select Gender",
                                    options: ProfileAccountEditView.options,
                                    onOptionSelected: { option in
                                        self.gender = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)
                            .zIndex(1)
                        }
                        
                        Group {
                            HStack() {
                                Text("Country of Origin")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    FontIcon
                                        .text(.materialIcon(code: .search), fontsize: 33)
                                        .foregroundColor(Color.white.opacity(0.4))
                                    if countryName.isEmpty {
                                        Text("Country")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                        .padding(.leading, 40)
                                        .padding(.bottom, 5)
                                    }
                                    TextField("", text: $countryName, onEditingChanged: {
                                        self.countryInput = $0 // true
                                    }, onCommit: {
                                        self.output = self.countryName
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
                                            if self.countryInput {
                                                ForEach(states, id: \.self) {(state: String) in
                                                    Group {
                                                        if state.contains(countryName) {
                                                            Button(action: {
                                                                self.countryName = state
                                                                self.countryInput = false
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
                            .padding(.top, 10)
                            .zIndex(1)
                            
                            HStack() {
                                Text("Current Location Address")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if currentStreet.isEmpty {
                                        Text("Street Address")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $currentStreet)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 5)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if currentCity.isEmpty {
                                        Text("City")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $currentCity)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 10)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    if currentStateProvince.isEmpty {
                                        Text("State/Province/Prefecture")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                    }
                                    TextField("", text: $currentStateProvince)
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                            }
                            .padding(.top, 10)
                            
                            VStack() {
                                ZStack(alignment: .leading) {
                                    FontIcon
                                        .text(.materialIcon(code: .search), fontsize: 33)
                                        .foregroundColor(Color.white.opacity(0.4))
                                    if currentCountryName.isEmpty {
                                        Text("Country")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white.opacity(0.5))
                                        .padding(.leading, 40)
                                        .padding(.bottom, 5)
                                    }
                                    TextField("", text: $currentCountryName, onEditingChanged: {
                                        self.currentCountryInput = $0 // true
                                    }, onCommit: {
                                        self.output = self.currentCountryName
                                    })
                                        .foregroundColor(Color.white)
                                        .autocapitalization(.none)
                                        .font(.system(size: 24))
                                        .padding(.leading, 40)
                                        .padding(.bottom, 5)
                                }
                                .frame(maxWidth: UIScreen.main.bounds.width - 70)
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(Color.white.opacity(0.15))
                                .cornerRadius(50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                                )
                                .overlay(
                                    ScrollView {
                                        VStack {
                                            if self.currentCountryInput {
                                                ForEach(states, id: \.self) {(state: String) in
                                                    Group {
                                                        if state.contains(currentCountryName) {
                                                            Button(action: {
                                                                self.currentCountryName = state
                                                                self.currentCountryInput = false
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
                            .padding(.top, 10)
                            .zIndex(2)
                            
                            HStack() {
                                Text("Status")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
                            .padding(.top, 40)
                            
                            VStack() {
                                DropdownSelector(
                                    placeholder: "Select Status",
                                    options: ProfileAccountEditView.statusOptions,
                                    onOptionSelected: { option in
                                        self.status = option
                                })
                                .padding(.horizontal)
                            }
                            .padding(.top, 10)		
                            .zIndex(1)
                        }
                    }
                    .padding(.top, 50)
                    
//                    HStack() {
//                        Text("Changes might take a few seconds to reflect on your profile in the beta.")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 18))
//                            .tracking(2)
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 50, alignment: .leading)
//                    .padding(.top, 100)
                    
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
                            .padding(.vertical, 30)
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
                    .padding(.top, 150)
                    .padding(.bottom, 30)
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
struct ProfileAccountEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountEditView()
    }
}
#endif
