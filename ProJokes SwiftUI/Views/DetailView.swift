//
//  DetailView.swift
//  ProJokes SwiftUI
//
//  Created by Work on 12.08.21.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let punchline: String
    
    var body: some View {
        ZStack{
            Color(red: 0.20, green: 0.60, blue: 0.86)
                .ignoresSafeArea(.all)
            VStack{
                Image("lachen2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Spacer()
                Text(punchline)
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all)
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                        Text("Back")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            
                    }
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                    )
                })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(punchline: "HA HA")
    }
}
