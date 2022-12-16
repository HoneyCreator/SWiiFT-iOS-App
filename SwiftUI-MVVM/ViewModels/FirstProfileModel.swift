//
//  FirstProfileModel.swift
//  SwiftUI-MVVM
//
//  Created by Rome on 11/18/22.
//  Copyright © 2022 Yusuke Kita. All rights reserved.
//

import Foundation
import Combine

class FirstProfileModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var age: String = ""
//    @Published var gender: DropdownOption
    @Published var country: String = ""
    
    @Published var formIsValid = false
    
    private var publishers = Set<AnyCancellable>()
    
    init() {
        isFirstProfileValidPublisher
            .receive(on: RunLoop.main)
            .assign(to: \.formIsValid, on: self)
            .store(in: &publishers)
    }
}

private extension FirstProfileModel {
    var isFirstNameValidPublisher: AnyPublisher<Bool, Never> {
        $firstName
            .map { firstName in
                return firstName.count >= 4
            }
            .eraseToAnyPublisher()
    }
    
    var isLastNameValidPublisher: AnyPublisher<Bool, Never> {
        $lastName
            .map { lastName in
                return lastName.count >= 4
            }
            .eraseToAnyPublisher()
    }
    
    var isAgeValidPublisher: AnyPublisher<Bool, Never> {
        $age
            .map { age in
                return age.count >= 1
            }
            .eraseToAnyPublisher()
    }
    
//    var isGenderValidPublisher: AnyPublisher<Bool, Never> {
//        $gender
//            .map { gender in
//                return gender.value.count >= 4
//            }
//            .eraseToAnyPublisher()
//    }
    
    var isCountryValidPublisher: AnyPublisher<Bool, Never> {
        $country
            .map { country in
                return country.count >= 3
            }
            .eraseToAnyPublisher()
    }
    
    var isFirstProfileValidPublisher: AnyPublisher<Bool, Never> {
        Publishers.CombineLatest4(
            isFirstNameValidPublisher,
            isLastNameValidPublisher,
            isAgeValidPublisher,
            isCountryValidPublisher
        )
        .map { isValidFirstName, isValidLastName, isValidAge, isValidCountry in
            return isValidFirstName && isValidLastName && isValidAge && isValidCountry
        }
        .eraseToAnyPublisher()
        
    }
}
