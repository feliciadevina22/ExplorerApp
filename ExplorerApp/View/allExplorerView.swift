//
//  allExplorerView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 05/05/21.
//

import SwiftUI

struct allExplorerView: View {
    
    @State var explorers: [ExplorerAPI] = []
    @State private var searchText : String = ""
    @State private var showingActionSheet = false
    @State private var filterText : String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, content: {
            SearchBar(text: $searchText)
            
            if(searchText.isEmpty){
                List(explorers) { explorer in
                    NavigationLink(
                        destination: DetailProfileView(e: explorer)){
                        explorerAllCardView(explorer: explorer)
                    }
                    
                }
                .onAppear {
                    Api().getPost { (explorers) in
                        self.explorers = explorers
                    }
                }
            } else if (!searchText.isEmpty) {
                List(explorers.filter({searchText.isEmpty ? true : $0.Name.lowercased().contains(searchText.lowercased())})) { explorer in
                    NavigationLink(
                        destination: DetailProfileView(e: explorer)){
                        explorerAllCardView(explorer: explorer)
                        
                        
                    }
                    
                }
                .onAppear {
                    Api().getPost { (explorers) in
                        self.explorers = explorers
                    }
                }
            } else if (!filterText.isEmpty){
                List(explorers.filter({filterText.isEmpty ? true : $0.Shift == filterText})) { explorer in
                    NavigationLink(
                        destination: DetailProfileView(e: explorer)){
                        explorerAllCardView(explorer: explorer)
                        
                        
                    }
                    
                }
                .onAppear {
                    Api().getPost { (explorers) in
                        self.explorers = explorers
                    }
                }
            }
            
            
        })
        .navigationTitle("All Explorer")
        .toolbar{
            ToolbarItemGroup(placement: .navigationBarTrailing){
                Button {
                    self.showingActionSheet = true
                } label: {
                    Label("Filter", systemImage: "arrowtriangle.down.fill")
                }
            }
        }
        .actionSheet(isPresented: $showingActionSheet, content: {
            ActionSheet(title: Text("Filter"), message: Text("What do you want to search"), buttons: [
                .default(Text("All Explorer")){ self.filterText = ""},
                .default(Text("Morning")){ filterText = "Morning"},
                .default(Text("Afternoon")){ self.filterText = "Afternoon"},
                .default(Text("Mentor")){self.filterText = "Morning,Afternoon"},
                .default(Text("Design")){filterText = "Design"},
                .default(Text("IT/Tech")){filterText = "IT / Tech"},
                .default(Text("Domain Expert")){filterText = "Domain Expert"},
                .cancel()
            ] )
        })
        .navigationBarColor(UIColor(Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1))))
        .background((Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1))))
    }
}

struct allExplorerView_Previews: PreviewProvider {
    static var previews: some View {
        allExplorerView()
    }
}
