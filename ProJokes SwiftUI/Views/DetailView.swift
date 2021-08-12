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
        ZStack{
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .ignoresSafeArea(.all)
            VStack{
                Image("lachen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Divider()
                Text(punchline)
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all)
                Divider()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(punchline: "HA HA")
    }
}
