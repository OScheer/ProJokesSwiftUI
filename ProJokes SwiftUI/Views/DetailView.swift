//
//  DetailView.swift
//  ProJokes SwiftUI
//
//  Created by Work on 12.08.21.
//

import SwiftUI

struct DetailView: View {
    
    let punchline: String
    
    var body: some View {
        Text(punchline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(punchline: "HA HA")
    }
}
