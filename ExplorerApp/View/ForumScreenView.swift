//
//  ForumScreenView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 30/04/21.
//

import SwiftUI

struct ForumScreenView: View {
    
    @State private var searchText : String = ""
    let allForum = [["title": "Can I Swift?", "category": "Code", "creator": "Angelica"], ["title": "Is Forsaken worth it?", "category": "Game", "creator": "Shelina"], ["title": "UIKit vs SwiftUI", "category": "Other", "creator": "Natasya"], ["title": "Egg First vs Chicken First", "category": "Code", "creator": "Angelica"]]
    
    
    var body: some View {
            ZStack{
                Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1)).ignoresSafeArea()
                
                VStack(alignment: .leading, content: {
                    SearchBar(text: $searchText)
                    
                    List(0..<allForum.count) { forum in
                        NavigationLink(
                            destination: ForumDetailView(forumTitle: allForum[forum]["title"]!, forumCategory: allForum[forum]["category"]!, forumCreator: allForum[forum]["creator"]!)){
                            ForumCardView(forumTitle: allForum[forum]["title"]!, forumCategory: allForum[forum]["category"]!, forumCreator: allForum[forum]["creator"]!)
                        }
                        
                    }
                })
            }
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        print("Add")
                    } label: {
                        Label("Add new Forum", systemImage: "plus")
                    }
                }
            }
    }
}

struct ForumScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ForumScreenView()
    }
}
