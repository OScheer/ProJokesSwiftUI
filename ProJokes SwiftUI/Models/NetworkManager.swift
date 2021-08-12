//
//  NetworkManager.swift
//  ProJokes SwiftUI
//
//  Created by Work on 12.08.21.
//

import Foundation

struct Joke: Decodable, Equatable, Identifiable {
    let id: Int
    let setup: String
    let punchline: String
}
