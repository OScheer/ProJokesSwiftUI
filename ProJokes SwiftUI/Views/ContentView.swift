//
//  ContentView.swift
//  ProJokes SwiftUI
//
//  Created by Work on 12.08.21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.jokes) { joke in
                NavigationLink(
                    destination: DetailView(punchline: joke.punchline),
                    label: {
                        HStack {
                            Text(joke.setup)
                        }
                    })
            }
            .navigationBarTitle("Programming Jokes")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
