//
//  HomeScreenView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 30/04/21.
//

import SwiftUI

struct HomeScreenView: View {
    var nama : String
    @State var explorers: [ExplorerAPI] = []
    @State private var searchText : String = ""
    @State private var selectedfilter = "Mentor"
    
    var jobTime = ["Mentor", "Morning", "Afternoon"]
    
    let layout = [GridItem(.flexible()), GridItem(.flexible(minimum: 2)), ]
    
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            VStack(alignment: .leading, spacing: 10, content: {
                
                SearchBar(text: $searchText)
                
                Text("Forum")
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)));
                
                NavigationLink(
                    destination: ForumDetailView(forumTitle:"Can I Swift?", forumCategory: "IT/Tech", forumCreator: "Angelica"))
                {
                    ForumCardView(forumTitle: "Can I Swift?", forumCategory: "IT/Tech", forumCreator: "Angelica")
                    
                }
                
                
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    Text("Explorer")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)));
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: allExplorerView(),
                        label: {
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color(#colorLiteral(red: 0.3254901961, green: 0.4431372549, blue: 0.8196078431, alpha: 1)))
                        })
                    
                    
                }).frame(width: 350)
                
                
                Picker(selection: $selectedfilter, label: Text("Explorer")) {
                    ForEach(jobTime, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                
                LazyVGrid(columns: layout, spacing: 20){
                    ForEach(explorers) {
                        explorer in
                        
                        if selectedfilter == "Morning" && explorer.Shift == "Morning" {
                            NavigationLink(
                                destination: DetailProfileView(e: explorer)){
                                explorerCardView(explorer: explorer)
                            }
                        } else if selectedfilter == "Afternoon" && explorer.Shift == "Afternoon"{
                            NavigationLink(
                                destination: DetailProfileView(e: explorer)){
                                explorerCardView(explorer: explorer)
                            }
                        } else if selectedfilter == "Mentor" && explorer.Shift == "Morning,Afternoon" {
                            NavigationLink(
                                destination: DetailProfileView(e: explorer)){
                                explorerCardView(explorer: explorer)
                            }
                        }
                        
                        
                    }
                }.onAppear{
                    Api().getPost { (explorers) in
                        self.explorers = explorers
                    }
                }
                
            })
            .padding()
        })
        .background((Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1))))
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(nama: "Felicia")
    }
}


