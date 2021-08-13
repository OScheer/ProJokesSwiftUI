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
                            Image(systemName: "bubble.right")
                                .foregroundColor(.blue)
                            Text(joke.setup)
                        }
                    })
            }
            .navigationBarTitle("Programming Jokes")
//            new  in iOS 15!!!
//            .refreshable {
//                            print("Do your refresh work here")
//                        }
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
