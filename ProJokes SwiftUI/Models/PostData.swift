//
//  PostData.swift
//  ProJokes SwiftUI
//
//  Created by Work on 12.08.21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var jokes = [Joke]()
    
    func fetchData() {
        if let url = URL(string: "https://official-joke-api.appspot.com/jokes/programming/ten") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        print(String(data: safeData, encoding: .utf8) ?? "*")
                        do {
                            let result = try decoder.decode([Joke].self, from: safeData)
                            DispatchQueue.main.async {
                                self.jokes = result
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
