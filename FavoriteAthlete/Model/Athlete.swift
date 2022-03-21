//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Joy Marie on 3/19/22.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
}

extension Athlete: CustomStringConvertible {
    var description: String {
        return "\(name) is \(age) years old and they play for the \(team) in the \(league)"
    }
}
