//
//  ProfileCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 05/05/21.
//

import SwiftUI

struct ProfileCardView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0, content: {
            
            HStack{
                Text("Birthday")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                Text("12 February 2000")
                    .font(.body)
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
            }
            Spacer()
            
            HStack(alignment: .firstTextBaseline){
                Text("Hobby")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                Text("Design, Code, Public Speaking")
                    .font(.body)
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
            }
            Spacer()
            
            HStack{
                Text("Quotes")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                Text(" \"I love Apple Academy\"")
                    .font(.body)
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
            }
            
            Spacer()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                Spacer()
                Button {
                    print("Instagram")
                } label: {
                    Label("IG", image: "")
                }
                
                Button {
                    print("LinkedIn")
                } label: {
                    Label("LI", image: "")
                }
                
                Button {
                    print("Whatsapp")
                } label: {
                    Label("WA", image: "")
                }
                
                Button {
                    print("Facebook")
                } label: {
                    Label("FB", image: "")
                }
                
                Spacer()
            })
            
            
            
        })
        .cornerRadius(0)
        .padding(30)
        .frame(maxWidth: .infinity, minHeight: 280)
        .background(Color.white)
        .cornerRadius(0)
        .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
    }
}
