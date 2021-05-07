//
//  ForumDetailView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 06/05/21.
//

import SwiftUI

struct ForumDetailView: View {
    var forumTitle:String
    var forumCategory: String
    var forumCreator:String
    @State var comment: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1)).ignoresSafeArea()
            VStack(alignment:.leading){
                Image("person.fill")
                    .data(url: URL(string: "https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3578&q=80")!)
                    .frame(width: 280, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("\(forumTitle)")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                    .multilineTextAlignment(.trailing)
                HStack {
                    Text("By : \(forumCreator)")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                    
                    Spacer()
                    
                    Text("\(forumCategory)")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                }
                
                
                Spacer()
                
                Text("    I’m not really familiar with brand but I bought this macbook pro 16” but when people see the Apple logo people always look me dead in the eyes and ….. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis congue metus. Curabitur volutpat massa quis augue lobortis, non porttitor massa pretium. In nec elit quam. Nam a nulla ligula. Sed bibendum pulvinar orci, in suscipit nulla. Duis nec laoreet urna. Praesent tempus eros mi, ut sodales orci fermentum in. In laoreet eros mi, id gravida mauris posuere eget. Etiam ut nisl justo. Fusce eu lacinia ipsum, et pharetra dolor. Vivamus pharetra lorem nisi, in lobortis nisi convallis blandit. So what do you think I should do?")
                    .font(.subheadline)
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                
                Spacer()
                Spacer()
                
                Text("Comment")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                
                HStack{
                    Image("person.fill")
                        .data(url: URL(string: "https://dl.airtable.com/.attachments/f4e031566703e5624dba9aa9a279c9ae/39b8226d/FeliciaDevina.jpg")!)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(100)
                    
                    TextField("Tell me what you're thinking...", text: $comment).textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack{
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Comment").padding(8).background(Color(#colorLiteral(red: 0.3254901961, green: 0.4431372549, blue: 0.8196078431, alpha: 1))).foregroundColor(.white).cornerRadius(10)
                    })
                }
            }.frame(width: .infinity, height: .infinity, alignment: .leading)
            .padding(30)
            .navigationTitle(forumTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct ForumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForumDetailView(forumTitle: "Swift swift", forumCategory: "Code", forumCreator: "Angelica")
    }
}
