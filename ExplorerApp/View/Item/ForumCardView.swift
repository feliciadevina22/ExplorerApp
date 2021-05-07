//
//  ForumCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 02/05/21.
//

import SwiftUI

struct ForumCardView: View {
    var forumTitle : String
    var forumCategory : String
    var forumCreator : String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .shadow(radius: 8);
            
            HStack(alignment: .center, spacing: 5, content: {
                
                Image("person.fill")                    .data(url: URL(string: "https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3578&q=80")!)
                    .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8)
                Spacer()
                VStack(alignment: .trailing, spacing: 1, content: {
                    Text("\(forumTitle)")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                        .multilineTextAlignment(.trailing)
                    Text("\(forumCategory)")
                        .font(.subheadline)
                        .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                    Text("\(forumCreator)")
                        .font(.subheadline)
                        .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                })
            })
            .padding(12)
        }
    }
    
}

struct ForumCardView_Previews: PreviewProvider {
    static var previews: some View {
        ForumCardView(forumTitle: "How to be a better coder", forumCategory: "IT/Tech", forumCreator: "Angelica")
    }
}
